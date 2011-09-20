/*
 * File:   main.h
 * Author: Kevin
 *
 * Created on September 13, 2011, 6:03 PM
 */
#ifndef __main_H
#define __main_H

__CONFIG(1, FOSC_INTOSCIO_EC & PLLDIV_1 & USBDIV_1);
__CONFIG(2, WDT_OFF);
__CONFIG(3, MCLRE_OFF);
__CONFIG(4, DEBUG_OFF & LVP_OFF);

#define LED1 LATD7
#define LED2 LATD6
#define LED3 LATD5
#define LED4 LATD4

#define BUTTON00 RA0 //
#define BUTTON01 RA1 //
#define BUTTON02 RA2 //
#define BUTTON03 RA3 //
#define BUTTON04 RA4 //
#define BUTTON05 RA5 //

#define BUTTON06 RD0 //
#define BUTTON07 RD1 //

#define BUTTON08 RB7 //
#define BUTTON09 RB6 //
#define BUTTON10 RB5
#define BUTTON11 RB4 //
#define BUTTON12 RB3 //
#define BUTTON13 RB2 //
#define BUTTON14 RB1 //
#define BUTTON15 RB0 //

#define BUTTON_COUNT 16
#define BUTTON_CYCLES 5

volatile bit Timeout;

//Globals
unsigned long Buttons[BUTTON_COUNT];

#define  testbit(var, bit)   ((var) & (1 <<(bit)))
#define  setbit(var, bit)    ((var) |= (1 << (bit)))
#define  clrbit(var, bit)    ((var) &= ~(1 << (bit)))
#define  isbitset(var, bit)   (testbit(var, bit) > 0 ? 1 : 0)

void main (void);
void loop(void);
void ButtonTest(int value);
void setup (void);
bit ReadButton(unsigned int id);
void UpdateOutput(signed int value);
signed int GetState(void);

#endif