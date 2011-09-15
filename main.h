/*
 * File:   main.h
 * Author: Kevin
 *
 * Created on September 13, 2011, 6:03 PM
 */
#ifndef __main_H
#define __main_H

__CONFIG(1H, OSC_INTIO2);
__CONFIG(2H, WDT_OFF);
__CONFIG(3H, MCLRE_OFF);
__CONFIG(4L, DEBUG_OFF);

#define LED1 LATBbits.LATB0
#define LED2 LATBbits.LATB1

#define BUTTON1 PORTAbits.RA0
#define BUTTON2 PORTAbits.RA1
#define BUTTON3 PORTAbits.RA2
#define BUTTON4 PORTAbits.RA3
#define BUTTON_COUNT 4
#define BUTTON_CYCLES 3

typedef struct ButtonInfo_t
{
    unsigned char id;
    unsigned long ticks;
    char lastKnownState;
} ButtonInfo;

union
{
  struct
  {
    unsigned Timeout:1;         //flag to indicate a TMR0 timeout
    unsigned :7;
  } Bit;
  unsigned char Byte;
} Flags;

//Globals
ButtonInfo Buttons[BUTTON_COUNT];

#define  testbit(var, bit)   ((var) & (1 <<(bit)))
#define  setbit(var, bit)    ((var) |= (1 << (bit)))
#define  clrbit(var, bit)    ((var) &= ~(1 << (bit)))

void main (void);
void setup (void);
bit ReadButton(unsigned char id);
unsigned char UpdateState(void);

#endif