/*
 * File:   clock.c
 * Author: Kevin
 *
 * Created on September 13, 2011, 10:48 PM
 */

#include <htc.h>
#include "clock.h"

void SysClock_Config( void )
{
    // Timer0 configuration
    TMR0ON = 0; // Stop the timer
    T08BIT = 0; // Run in 16-bit mode
    T0CS = 0;   // Use system clock to increment timer
    PSA = 1;    // A prescaler is NOT assigned for Timer0
    T0PS2 = 1;  // Use a 1:256 prescaler
    T0PS1 = 1;
    T0PS0 = 1;

    GIEH = 0;
    TMR0IE = 0;
    TMR0IF = 0;

    TMR0   = 0xFFFF - 10;    // 1000us or 1ms before overflow

    TMR0IE = 1;
    TMR0ON = 1;
}
/*
bit SysClock_ISR( void )
{
    if(TMR0IF && TMR0IE){
        TMR0IF = 0;               // clear IF before starting
        TMR0   = 0xFFFF - 10;    // 1000us or 1ms before overflow
        return 1;
    }

    return 0;
}
*/