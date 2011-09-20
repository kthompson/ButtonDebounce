/*
 * File:   main.c
 * Author: Kevin
 *
 * Created on September 8, 2011, 6:20 PM
 */

#include <htc.h>
#include "main.h"
#include "clock.h"

void main(void) {    
    setup();
    
    while(1);    
}

void setup(void) {
    int i;

    //Set inputs as Digital
    PCFG3 = 1;
    PCFG2 = 1;
    PCFG1 = 1;
    PCFG0 = 1;

    //Buttons (inputs)
    TRISA = 0b11111111;
    TRISB = 0b11111111;

    TRISD = 0b00000011;

    // initialize tick counts
    for (i = 0; i < BUTTON_COUNT; i++){
        Buttons[i] = 0;
    }

    //default leds
    LED1 = 0;
    LED2 = 0;
    LED3 = 0;
    LED4 = 0;
    
    //Setup the timer
    SysClock_Config();

    IPEN = 0;
    GIEH = 1;
    PEIE = 1;
}

void UpdateOutput(signed int value)
{
    if(value == -1)
        return;
    
    LED1 = isbitset(value, 0);
    LED2 = isbitset(value, 1);
    LED3 = isbitset(value, 2);
    LED4 = isbitset(value, 3);    
}


bit ReadButton(unsigned int id)
{
    switch(id){
        case 0:
            return BUTTON00;
        case 1:
            return BUTTON01;
        case 2:
            return BUTTON02;
        case 3:
            return BUTTON03;
        case 4:
            return BUTTON04;
        case 5:
            return BUTTON05;
        case 6:
            return BUTTON06;
        case 7:
            return BUTTON07;
        case 8:
            return BUTTON08;
        case 9:
            return BUTTON09;
        case 10:
            return BUTTON10;
        case 11:
            return BUTTON11;
        case 12:
            return BUTTON12;
        case 13:
            return BUTTON13;
        case 14:
            return BUTTON14;
        case 15:
            return BUTTON15;
        default:
            return 0;
    }
}

signed int GetState(void)
{
    signed int active = -1;
    int id;
    for(id = 0; id < BUTTON_COUNT; id++)
    {        
        if(ReadButton(id))
        {
            Buttons[id]++;
        }
        else
        {
            Buttons[id] = 0;
        }

        if(Buttons[id] == BUTTON_CYCLES)
        {
            active = id;
        }
    }

    return active;
}


void interrupt isr (void)
{
    if(TMR0IF && TMR0IE){
        TMR0IF = 0;               // clear IF before starting
        TMR0   = 0xFFFF - 10;    // 1000us or 1ms before overflow
        UpdateOutput(GetState());
    }
}

//----------------------------------------------------------------------------
