
#include "gpio_msp432.h"
#include "spi_msp432.h"
#include "st7735s_drv.h"
#include"uGUI.h"
#include "font_4x6.h"
#include "font_5x8.h"
#include "font_5x12.h"
#include "font_6x8.h"
#include "font_6x10.h"
#include "font_7x12.h"
#include "font_8x12.h"
#include "adc14_msp432.h"
#include "uart_msp432.h"
#include "posix_io.h"
#include "stdio.h"
#include <stdint.h>
#include "msp.h"
#include "task.h"


#define SWITCH1 PORT_PIN(5,1)
#define SWITCH2 PORT_PIN(3,5)
#define MAX_OBJECTS 10
//extern const uint16_t angry_bird[16384];
extern const uint16_t mario[16384];
extern const uint16_t stein[180];

int zeit_bis_zum_schiessen = 100;
int gametime = 0;
int punkte = 0;
int dx_speed = 7;
int dy_speed = 7;
int breite_hinderniss = 20;
int hinderniss_y = 0;
int hinderniss_x = 0;
int playerX = 50;           // Player's X position spiel2
int playerY = 50;           // Player's Y position spiel2
int getroffeneZiele = 0;
int anzahlZiele = 5;
bool neuesZiel = true;
int hinderniss_speed = 5;
void window_1_callback(uGUI::MESSAGE* msg)
{
	printf("%d\n", 1);
	// . . .
	if (msg->type == MSG_TYPE_OBJECT)
	{
		if (msg->id == OBJ_TYPE_BUTTON) {
			switch (msg->sub_id)
			{
			case BTN_ID_0:
			default:
				break;
			}
		}
	}
}

void window_3_callback(uGUI::MESSAGE* msg)
{

}
void window_hinderniss_callback(uGUI::MESSAGE* msg)
{

}

void window_2_callback(uGUI::MESSAGE* msg)
{
	// . . .
	printf("%d\n", 2);
	if (msg->type == MSG_TYPE_OBJECT)
	{
		if (msg->id == OBJ_TYPE_BUTTON) {
			switch (msg->sub_id)
			{
			case BTN_ID_0:
			default:
				break;
			}
		}
	}
}

//geschwindigkeit für das erste spiel in x richtung
void setSpeed() {
	printf("\nGib eine SpeedZahl in pixel an: ");
	int zahl;
	scanf("%50d", &zahl);
	dx_speed = zahl;
	dy_speed = zahl;
	printf("%\nEingegebene Zahl: %d\n", zahl);
}


void setSchwierigkeitsgrad() {
	printf("\nWähle einen Schwierigkeitsgrad: ");
	printf("\n1 = leicht ");
	printf("\n2 = schwer ");
	int zahl;
	scanf("%50d", &zahl);
	while (zahl > 2 || zahl < 1) {
		printf("\nDie Zahl muss 1 oder 2 sein: ");
		scanf("%50d", &zahl);
	}
	printf("%\nEingegebene Zahl: %d\n", zahl);
	hinderniss_speed = 15;
	anzahlZiele = 10;
}

//+100 punkte beim aufeinander treffen 
void handleColision(int16_t x_start, int16_t y_start, int breite) {
	if (hinderniss_y + breite_hinderniss >= y_start) {
		if (hinderniss_x >= x_start && hinderniss_x <= x_start + breite || hinderniss_x + breite_hinderniss >= x_start && hinderniss_x + breite_hinderniss <= x_start + breite) {
			punkte = punkte + 100;
			int random_number = rand() % 100;
			hinderniss_y = 0;
			hinderniss_x = random_number;
		}
	}

}

//+100 punkte beim fehlschuss sonst +1 auf getroffene ziele
void handleTreffer(int playerX, int playerY, int kreis_raduis, int mitte_kreis) {
	printf("%\n playerY: %d\n", playerY);
	printf("%\n mitte_kreis: %d\n", mitte_kreis);
	if (playerY >= mitte_kreis - kreis_raduis && playerY <= mitte_kreis + kreis_raduis) {
		printf("%\nEingegebene Zahl: %d\n", 2);
		if (playerX >= mitte_kreis - kreis_raduis && playerX <= mitte_kreis + kreis_raduis) {
			printf("%\nEingegebene Zahl: %d\n", 3);
			getroffeneZiele++;
			neuesZiel = true;
			return;
		}
	}
	punkte = punkte + 100;
}

int main(void)
{

	//joystic
	uart_msp432 uart;
	posix_io::inst.register_stdout(uart);
	printf("%d\n", 99);

	adc14_msp432_channel joy_X(15);
	adc14_msp432_channel joy_Y(9);
	joy_X.adcMode(ADC::ADC_10_BIT);
	joy_Y.adcMode(ADC::ADC_10_BIT);

	// Switch on backlight
	gpio_msp432_pin lcd_bl(PORT_PIN(2, 6));
	lcd_bl.gpioMode(GPIO::OUTPUT | GPIO::INIT_HIGH);

	// Setup SPI interface
	gpio_msp432_pin lcd_cs(PORT_PIN(5, 0));
	spi_msp432  spi(EUSCI_B0_SPI, lcd_cs);
	spi.setSpeed(24000000);

	// Setup LCD driver
	gpio_msp432_pin s_oben(SWITCH1);
	s_oben.gpioMode(GPIO::INPUT | GPIO::PULLUP);
	gpio_msp432_pin s_unten(SWITCH2);
	s_unten.gpioMode(GPIO::INPUT | GPIO::PULLUP);
	gpio_msp432_pin led(PORT_PIN(1, 0));//red
	led.gpioMode(GPIO::OUTPUT);


	gpio_msp432_pin lcd_rst(PORT_PIN(5, 7));
	gpio_msp432_pin lcd_dc(PORT_PIN(3, 7));
	st7735s_drv lcd(spi, lcd_rst, lcd_dc, st7735s_drv::Crystalfontz_128x128);

	posix_io::inst.register_stdin(uart);
	posix_io::inst.register_stdout(uart);
	posix_io::inst.register_stderr(uart);

	// Setup uGUI
	uGUI gui(lcd);
	lcd.clearScreen(0x0);

	// Setup bitmap object
	uGUI::BMP bmp;
	bmp.height = 128;
	bmp.width = 128;
	bmp.p = mario;
	bmp.bpp = 16;
	bmp.colors = BMP_RGB565;

	


	uGUI::OBJECT obj1[MAX_OBJECTS];
	uGUI::OBJECT obj2[MAX_OBJECTS];
	uGUI::OBJECT obj3[MAX_OBJECTS];
	uGUI::OBJECT obj_hinderniss1[MAX_OBJECTS];
	uGUI::WINDOW w1;

	gui.WindowResize(&w1, 0, 0, 120, 120);

	uGUI::MESSAGE m1;

	uGUI::WINDOW w2;

	gui.WindowCreate(&w1, obj1, MAX_OBJECTS, window_1_callback);




	uGUI::BUTTON b1;
	uGUI::BUTTON b2;


	b1.fc = C_YELLOW;

	//w1 = optionen window
	gui.ButtonCreate(&w1, &b1, BTN_ID_0, 10, 10, 110, 40);
	gui.ButtonCreate(&w1, &b2, BTN_ID_1, 10, 50, 110, 80);
	char str2 = 'v';
	char* str = &str2;
	gui.ButtonSetText(&w1, BTN_ID_0, str);

	char* button_text1 = new char[] {"Change Speed"};
	gui.ButtonSetText(&w1, BTN_ID_0, button_text1);
	gui.ButtonSetFont(&w1, BTN_ID_0, &FONT_6X8);

	char* button_text2 = new char[] {"Difficulty"};
	gui.ButtonSetText(&w1, BTN_ID_1, button_text2);
	gui.ButtonSetFont(&w1, BTN_ID_1, &FONT_6X8);



	char* window_text = new char[] {"Settings"};
	gui.WindowSetTitleText(&w1, window_text);
	gui.WindowSetTitleColor(&w1, C_ROSY_BROWN);
	gui.WindowSetTitleTextColor(&w1, C_WHITE);
	gui.WindowSetTitleTextFont(&w1, &FONT_6X8);


	//window um den nutzer klarzumachen, dass eine konsoleneingabe notwendig ist
	char* window_text3 = new char[] {"Konsoleneingabe"};
	uGUI::WINDOW w_statusText;
	gui.WindowResize(&w_statusText, 0, 0, 120, 120);
	gui.WindowCreate(&w_statusText, obj3, MAX_OBJECTS, window_3_callback);
	gui.WindowSetTitleText(&w_statusText, window_text3);
	gui.WindowSetTitleColor(&w_statusText, C_RED);
	gui.WindowSetTitleTextColor(&w_statusText, C_WHITE);
	gui.WindowSetTitleHeight(&w_statusText, 120);
	gui.WindowSetTitleTextFont(&w_statusText, &FONT_6X8);






	gui.SetForecolor(C_GREEN);
	gui.FontSelect(&FONT_6X8);

	gui.SetForecolor(C_GREEN);
	gui.FontSelect(&FONT_6X8);

	gui.Update();

	int dx = 0;
	int dy = 0;

	lcd.clearScreen(C_STEEL_BLUE);

	//w2 ist der player für das erste spiel
	gui.WindowCreate(&w2, obj2, MAX_OBJECTS, window_2_callback);
	int breite = 20;
	gui.WindowResize(&w2, 50, 106, 50 + breite, 106 + breite);
	gui.WindowSetBackColor(&w2, C_AZURE);
	gui.WindowShow(&w2);
	gui.WindowSetTitleHeight(&w2, 0);

	bool w1_vis = false;
	bool w2_vis = true;
	bool b1_active = false;
	bool b2_active = false;
	

	
	uGUI::IMAGE img;
	gui.ImageCreate(&w2, &img, IMG_ID_0, gui.WindowGetXStart(&w2), gui.WindowGetYStart(&w2), gui.WindowGetXEnd(&w2),  gui.WindowGetYEnd(&w2));
	
	uGUI::BMP bmp2;
	bmp2.p = stein;
	bmp2.colors = BMP_RGB565;
	bmp2.width = gui.WindowGetXEnd(&w2)- gui.WindowGetXStart(&w2);
	bmp2.height = gui.WindowGetYEnd(&w2)- gui.WindowGetYStart(&w2);
	bmp2.bpp = 16;
	gui.ImageSetBMP(&w2, IMG_ID_0, &bmp2);
	//ein versuch um das projekt etwas schöner zu gestalten :(
	gui.ImageShow(&w2, IMG_ID_0);
	
	//erstes spiel
	while (1) {
		
		//das erste window wird solange verwendet bis man die optionen öffnet
		if (!w1_vis)
			gui.WindowShow(&w2);
		//erstellt das hindernis
		gui.DrawFrame(0, 0, breite_hinderniss, breite_hinderniss, C_ROSY_BROWN);
		//sobald man die erste option verwendet öffnet sich die konsoleneingabe, um die geschwindigkeit festzulegen
		//hier wird der change speed button behandelt
		if (b1_active && w1_vis && !s_oben.gpioRead()) {
			task::sleep(200);
			gui.WindowShow(&w_statusText);
			task::sleep(200);
			gui.Update();
			setSpeed();
			gui.WindowHide(&w_statusText);
			gui.WindowHide(&w1);

			gui.Update();
		}
		//hier wird der schwierigkeitsgrad button behandelt
		if (b2_active && w1_vis && !s_oben.gpioRead()) {
			task::sleep(200);
			gui.WindowShow(&w_statusText);
			task::sleep(200);
			gui.Update();
			setSchwierigkeitsgrad();
			gui.WindowHide(&w_statusText);
			gui.WindowHide(&w1);

			gui.Update();
		}
		gui.WindowHide(&w_statusText);
		uint16_t val = joy_X.adcReadRaw();
		int jx = (int)val;
		uint16_t val2 = joy_Y.adcReadRaw();
		int jy = (int)val2;
		if (jx > 600) {
			dx = dx_speed;
		}
		else if (jx < 400) {
			dx = -dx_speed;
		}
		else { dx = 0; }

		if (jy < 400) {
			dy = dy_speed;
			if (w1_vis) {//optionen button händeln
				gui.ButtonSetBackColor(&w1, BTN_ID_1, C_GREEN);
				gui.ButtonSetBackColor(&w1, BTN_ID_0, C_WHITE);
				b2_active = true;
				b1_active = false;

			}
		}
		else if (jy > 600) {
			dy = -dy_speed;
			if (w1_vis) {//optionen button händeln
				gui.ButtonSetBackColor(&w1, BTN_ID_0, C_GREEN);
				gui.ButtonSetBackColor(&w1, BTN_ID_1, C_WHITE);
				b1_active = true;
				b2_active = false;
			}
		}
		else { dy = 0; }

		//update der playerposition
		gui.WindowResize(&w2, gui.WindowGetXStart(&w2) + dx, gui.WindowGetYStart(&w2), gui.WindowGetXEnd(&w2) + dx, gui.WindowGetYEnd(&w2));


		//hinderniss update wenn keine optionen offen sind
		if (w2_vis) {
			gui.DrawFrame(hinderniss_x, hinderniss_y, hinderniss_x + breite_hinderniss, hinderniss_y + breite_hinderniss, C_CHOCOLATE);
			gui.FillFrame(hinderniss_x, hinderniss_y, hinderniss_x + breite_hinderniss, hinderniss_y + breite_hinderniss, C_CHOCOLATE);
		}

		//optionen button händeln
		if (!s_oben.gpioRead()) {
			led = HIGH;
			gui.WindowShow(&w1);
			w1_vis = true;
			w2_vis = false;

		}
		//optionen button händeln
		if (!s_unten.gpioRead()) {
			led = LOW;
			gui.WindowHide(&w1);
			w1_vis = false;
			w2_vis = true;
		}
		hinderniss_y = hinderniss_y + hinderniss_speed;
		//gibt die punkteanzahl am bildschirm aus, falls das spiel nicht durch die optionen unterborchen wird
		if (w2_vis) {
			char x_arr[40];
			sprintf(x_arr, "Zeit: %d", punkte);
			gui.PutString(0, 0, x_arr);
			gametime++;
			punkte++;
		}
		//update der hindernis position, falls das ende des screens erreicht wurde
		if (hinderniss_y >= 120) {
			int random_number = rand() % 100;
			hinderniss_y = 0;
			hinderniss_x = random_number;
		}
		//prüft ob man ein hinderniss erwischt hat
		handleColision(gui.WindowGetXStart(&w2), gui.WindowGetYStart(&w2), breite);

		gui.Update();
		task::sleep(100);
		//startet das zweite spiel wenn die zeit erreicht ist
		if (gametime >= zeit_bis_zum_schiessen)
			break;

	}


	//spiel 2 schießen



	gui.SetForecolor(C_YELLOW);
	gui.FontSelect(&FONT_4X6);
	gui.FillScreen(C_BLACK);
	int random_number = rand() % 101 + 10;
	int mitte_kreis = random_number;
	int kreis_raduis = 10;
	while (1)
	{
		int val_x = (int)joy_X.adcReadRaw();
		int val_y = (int)joy_Y.adcReadRaw();

		if (neuesZiel) {
			gui.DrawCircle(mitte_kreis, mitte_kreis, kreis_raduis, C_BLACK);
			gui.FillCircle(mitte_kreis, mitte_kreis, kreis_raduis, C_BLACK);
			neuesZiel = false;
			random_number = rand() % 101 + 10;
			mitte_kreis = random_number;
		}

		char x_arr[40];
		sprintf(x_arr, "Zeit:   %d", punkte);
		gui.PutString(0, 0, x_arr);
		gametime++;
		punkte++;


		char x_arr2[40];
		sprintf(x_arr2, "Getroffen:%d", getroffeneZiele);
		gui.PutString(70, 0, x_arr2);






		// Update player position based on joystick input
		if (val_x < 400)
		{
			playerX -= 10;   // Move player left
			if (playerX < 0)
				playerX = 0; // Limit player's X position to screen boundary
		}
		else if (val_x > 550)
		{
			playerX += 10;   // Move player right
			if (playerX > 110)
				playerX = 110; // Limit player's X position to screen boundary
		}

		if (val_y > 550)
		{
			playerY -= 10;   // Move player up
			if (playerY < 0)
				playerY = 0; // Limit player's Y position to screen boundary
		}
		else if (val_y < 400)
		{
			playerY += 10;   // Move player down
			if (playerY > 125)
				playerY = 125; // Limit player's Y position to screen boundary
		}


		if (!s_oben.gpioRead()) {
			led = HIGH;
			handleTreffer(playerX, playerY, kreis_raduis, mitte_kreis);

		}

		//Spiel ended sobald alle Ziele getroffen wurden
		if (getroffeneZiele == anzahlZiele)
			break;

		if (!s_unten.gpioRead()) {
			led = LOW;
		}



		gui.DrawCircle(mitte_kreis, mitte_kreis, kreis_raduis, C_ANTIQUE_WHITE);
		gui.FillCircle(mitte_kreis, mitte_kreis, kreis_raduis, C_ANTIQUE_WHITE);

		gui.DrawLine(playerX, playerY, playerX + 10, playerY, C_RED);
		gui.DrawLine(playerX + 5, playerY + 5, playerX + 5, playerY - 5, C_RED);
		task::sleep(100);

		gui.Update();
		gui.DrawLine(playerX, playerY, playerX + 10, playerY, C_BLACK);
		gui.DrawLine(playerX + 5, playerY + 5, playerX + 5, playerY - 5, C_BLACK);

	}

	lcd.clearScreen(0x0);

	gui.SetForecolor(C_RED);
	gui.FontSelect(&FONT_6X10);
	char x_arr2[40];
	sprintf(x_arr2, "Spiel Vorbei!", punkte);
	gui.PutString(0, 0, x_arr2);

	gui.SetForecolor(C_YELLOW);
	gui.FontSelect(&FONT_6X10);
	sprintf(x_arr2, "Benoetigte Zeit:\n\n\n", punkte);
	gui.PutString(0, 30, x_arr2);

	gui.SetForecolor(C_YELLOW);
	gui.FontSelect(&FONT_8X12);
	sprintf(x_arr2, "%d", punkte);
	gui.PutString(0, 50, x_arr2);

	while (1);





}
