/*
 * File:   main.c
 * Author: Kevin
 *
 * Created on September 8, 2011, 6:20 PM
 */

#include <htc.h>
#include <stdio.h>
#include <stdarg.h>
#include "main.h"
#include "clock.h"

void main(void) {
    //unsigned char state;
    
    setup();
    
    GIEH = 1; //enable high priority interrupt
    SysClock_Start();

    while(1)
    {
        if (!Flags.Bit.Timeout)
            continue;

        Flags.Bit.Timeout = 0;           //clear timeout indicor

        
        //state = UpdateState();
        
        //if(state != -1)
        //    LATB = state;

        //continue;
        
        switch(UpdateState()){
            case 0:
                LED1 = 0;
                LED2 = 0;
                break;
            case 1:
                LED1 = 1;
                LED2 = 0;
                break;
            case 2:
                LED1 = 0;
                LED2 = 1;
                break;
            case 3:
                LED1 = 1;
                LED2 = 1;
                break;
        }
    }
}

void setup(void) {
    int i;
    IDLEN = 0;
    //enable internal RC clock
    SCS1 = 1;
    SCS0 = 1;
    //set internal clock to 8MHz
    IRCF0 = 1;
    IRCF1 = 1;
    IRCF2 = 1;
    //sleep activates the clock rate
    SLEEP();

    //Disable A/D Conversion
    PCFG0 = 1;
    PCFG1 = 1;
    PCFG2 = 1;
    PCFG3 = 1;

    //Buttons (inputs)
    TRISA0 = 1;
    TRISA1 = 1;
    TRISA2 = 1;
    TRISA3 = 1;

    //LEDS (outputs)
    TRISB  = 0;

    // Create Buttons
    for (i = 0; i < BUTTON_COUNT; i++){
        Buttons[i].id = i;
        Buttons[i].lastKnownState = 0;
        Buttons[i].ticks = 0;
    }

    //default leds
    PORTB = 0;
    //LED1 = 0;
    //LED2 = 0;

    //Setup the timer
    SysClock_Config();
    Flags.Byte = 0;
}


bit ReadButton(unsigned char id)
{
    return testbit(PORTA, id) > 0 ? 1 : 0;
}

unsigned char UpdateState(void)
{
    unsigned char active = -1;
    int id;
    for(id = 0; id < BUTTON_COUNT; id++)
    {        
        if(ReadButton(id))
        {
            Buttons[id].ticks++;
        }
        else
        {
            Buttons[id].ticks = 0;
            Buttons[id].lastKnownState = 0;
        }

        if(Buttons[id].ticks == BUTTON_CYCLES)
        {
            active = id;
        }

        if(Buttons[id].ticks >= BUTTON_CYCLES)
        {
            Buttons[id].lastKnownState = 1;
        }
    }

    return active;
}

void interrupt isr (void)
{    
    if (T0IF && T0IE)
    {
        SysClock_ISR();
        Flags.Bit.Timeout = 1;
    }
}

//----------------------------------------------------------------------------
