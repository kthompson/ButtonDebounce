/*
 * File:   clock.c
 * Author: Kevin
 *
 * Created on September 13, 2011, 10:48 PM
 */

#include <htc.h>
#include "clock.h"

unsigned long sysclock_count;


void SysClock_Config( void )
{
    TMR0ON = 0;

    TMR0IP = 1;               // low priority interrupt assignment
    TMR0IF = 0;               // clear IF before starting

    // Start things up
    TMR0   = 0xFFFF - 100;    // 1000us or 1ms before overflow
    T0CON  = 0x88;	        // 16bitmode, 1:1 prescale, osc=off, internal clock, tmr on

    TMR0IE = 1;              // Enable interrupts for timer1
}

void SysClock_Start( void )
{
    TMR0ON = 1;               // start sysclock running
    TMR0IE = 1;               // Enable interrupts for timer1
}

void SysClock_Stop( void )
{
    TMR0ON = 0;	       // stop sysclock running...
    TMR0IE = 0;               // Disable interrupts for timer1
}

unsigned long SysClock_GetMs( void )
{
    unsigned long tmp;
    TMR0IE      = 0;               // Disable interrupts for timer1
    tmp = sysclock_count;
    TMR0IE      = 1;               // Enable interrupts for timer1
    return tmp;
}

 void SysClock_SetMs( unsigned long ms )
 {
    TMR0IE      = 0;               // Disable interrupts for timer1
    sysclock_count  = ms;
    TMR0IE      = 1;               // Enable interrupts for timer1
 }

void SysClock_ISR( void )
{
    TMR0IF = 0;                 // clear the interrupt flag for this device
    TMR0ON = 0;                 // reset the timer and re-start it
    TMR0 -= 10;                // 1000us or 1ms
    T0CON = 0x88;	           // this also starts the timer running
    sysclock_count++;
}