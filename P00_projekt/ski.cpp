
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

int dx_speed = 1;
int dy_speed = 1;
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

void setSpeed() {
	printf("\nGib eine SpeedZahl in pixel an ");
	int zahl;
	scanf("%50d", &zahl);
	dx_speed = zahl;
	dy_speed = zahl;
	printf("%2d\n", zahl);
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

	/*
	uGUI::BMP bmp2;
	bmp.height = 18;
	bmp.width  = 10;
	bmp.p      = stein;
	bmp.bpp    = 16;
	bmp.colors = BMP_RGB565;
	*/



	//gui.DrawBMP(0, 0, &bmp);

	gui.DrawCircle(30, 96, 15, C_YELLOW);
	gui.FillCircle(30, 96, 13, C_RED);


	uGUI::OBJECT obj1[MAX_OBJECTS];
	uGUI::OBJECT obj2[MAX_OBJECTS];
	uGUI::OBJECT obj3[MAX_OBJECTS];
	uGUI::WINDOW w1;

	gui.WindowResize(&w1, 0, 0, 120, 120);

	uGUI::MESSAGE m1;

	uGUI::WINDOW w2;

	gui.WindowCreate(&w1, obj1, MAX_OBJECTS, window_1_callback);




	uGUI::BUTTON b1;
	uGUI::BUTTON b2;


	b1.fc = C_YELLOW;

	gui.ButtonCreate(&w1, &b1, BTN_ID_0, 10, 10, 110, 40);
	gui.ButtonCreate(&w1, &b2, BTN_ID_1, 10, 50, 110, 80);
	char str2 = 'v';
	char* str = &str2;
	gui.ButtonSetText(&w1, BTN_ID_0, str);

	char* button_text1 = new char[] {"Change Speed"};
	gui.ButtonSetText(&w1, BTN_ID_0, button_text1);
	gui.ButtonSetFont(&w1, BTN_ID_0, &FONT_6X8);

	char* button_text2 = new char[] {"Button1"};
	gui.ButtonSetText(&w1, BTN_ID_1, button_text2);
	gui.ButtonSetFont(&w1, BTN_ID_1, &FONT_6X8);



	char* window_text = new char[] {"Erstes Window"};
	gui.WindowSetTitleText(&w1, window_text);
	gui.WindowSetTitleColor(&w1, C_ROSY_BROWN);
	gui.WindowSetTitleTextColor(&w1, C_WHITE);
	gui.WindowSetTitleTextFont(&w1, &FONT_6X8);


	char* window_text3 = new char[] {"Konsoleneingabe"};
	uGUI::WINDOW w_statusText;
	gui.WindowResize(&w_statusText, 0, 0, 120, 120);
	gui.WindowCreate(&w_statusText, obj3, MAX_OBJECTS, window_3_callback);
	gui.WindowSetTitleText(&w_statusText, window_text3);
	gui.WindowSetTitleColor(&w_statusText, C_RED);
	gui.WindowSetTitleTextColor(&w_statusText, C_WHITE);
	gui.WindowSetTitleHeight(&w_statusText, 120);
	gui.WindowSetTitleTextFont(&w_statusText, &FONT_6X8);
	




	gui.Update();

	int dx = 0;
	int dy = 0;

	lcd.clearScreen(C_STEEL_BLUE);

	gui.WindowCreate(&w2, obj2, MAX_OBJECTS, window_2_callback);
	int breite = 20;
	gui.WindowResize(&w2, 50, 106, 50 + breite, 106 + breite);
	gui.WindowSetBackColor(&w2, C_CHOCOLATE);
	gui.WindowShow(&w2);
	gui.WindowSetTitleHeight(&w2, 0);

	bool w1_vis = false;
	bool w2_vis = true;
	bool b1_active = false;
	bool b2_active = false;


	while (1) {
		//gui.DrawLine( 0,123,123,123	,C_YELLOW);
		if (b1_active && w1_vis && !s_oben.gpioRead()) {
			gui.WindowShow(&w_statusText);
			gui.Update();
			setSpeed();
			gui.WindowHide(&w_statusText);
			gui.Update();
			task::sleep(100);
		}
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
			if (w1_vis) {
				gui.ButtonSetBackColor(&w1, BTN_ID_1, C_GREEN);
				gui.ButtonSetBackColor(&w1, BTN_ID_0, C_WHITE);
				b2_active = true;
				b1_active = false;
				task::sleep(100);
			}
		}
		else if (jy > 600) {
			dy = -dy_speed;
			if (w1_vis) {
				gui.ButtonSetBackColor(&w1, BTN_ID_0, C_GREEN);
				gui.ButtonSetBackColor(&w1, BTN_ID_1, C_WHITE);
				b1_active = true;
				b2_active = false;
				task::sleep(100);
			}
		}
		else { dy = 0; }
		//lcd.scroll(1);
		//gui.DrawFrame(gui.WindowGetXStart(&w2) , gui.WindowGetYStart(&w2), gui.WindowGetXEnd(&w2) , gui.WindowGetYEnd(&w2) , C_STEEL_BLUE);
		//gui.FillFrame(gui.WindowGetXStart(&w2), gui.WindowGetYStart(&w2), gui.WindowGetXEnd(&w2), gui.WindowGetYEnd(&w2), C_STEEL_BLUE);
		gui.WindowResize(&w2, gui.WindowGetXStart(&w2) + dx, gui.WindowGetYStart(&w2) + dy, gui.WindowGetXEnd(&w2) + dx, gui.WindowGetYEnd(&w2) + dy);
		for (int i = 100000; i > 0; i--);
		if (!s_oben.gpioRead()) {
			led = HIGH;
			gui.WindowShow(&w1);
			w1_vis = true;
			w2_vis = false;

		}
		if (!s_unten.gpioRead()) {
			led = LOW;
			gui.WindowHide(&w1);
			w1_vis = false;
			w2_vis = true;
		}
		gui.Update();
	}
}
