/***********************************************************************//** 
 * \file  interrupt.c
 * \brief  source file for interrypt handlers
 * \copyright Copyright (C) 2015-2020 @ APTCHIP
 * <table>
 * <tr><th> Date  <th>Version  <th>Author  <th>Description
 * <tr><td> 2020-8-10 <td>V0.0  <td>WNN   <td>initial
 * </table>
 * *********************************************************************
*/

/* Includes ------------------------------------------------------------------*/

#include <soc.h>
#include <drv/gpio.h>
#include <drv/uart.h>
#include <drv/adc.h>
#include <drv/pin.h>
#include <drv/gpio.h>
#include <drv/iwdt.h>
#include <drv/cmp.h>
#include "board_config.h"
#include "csp.h"
#include "ifc.h"
#include "iic.h"
#include "bootloader.h"

/* externs function--------------------------------------------------------*/
extern void tick_irqhandler(void);					
extern void uart_irqhandler(csp_uart_t *ptUartBase,uint8_t byIdx);


/* private function--------------------------------------------------------*/

/* extern variablesr------------------------------------------------------*/

/* Private variablesr------------------------------------------------------*/

/*************************************************************/
//CORET Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/

void coret_int_handler(void) 
{
    // ISR content ...
	tick_irqhandler();		//system coret 
}

void syscon_int_handler(void) 
{
    // ISR content ...
}

/** \brief only used when DFLASH parallel mode PGM is enabled
 *  \param none
 *  \return none
 */

void ifc_int_handler(void) 
{	
	// ISR content ...
}

void adc_int_handler(void) 
{
	
}

void ept0_int_handler(void) 
{	
	// ISR content ...
	
}
void dma_int_handler(void)
{
	// ISR content ...	 
}

void wwdt_int_handler(void)
{
	 // ISR content ...
}

void gpta0_int_handler(void) 
{
}

void gpta1_int_handler(void) 
{
}

void gptb0_int_handler(void) 
{
}

void gptb1_int_handler(void) 
{
}

void rtc_int_handler(void) 
{
    //ISR content ...
}

void uart0_int_handler(void) 
{
    // ISR content ...
	//uart_irqhandler(UART0, 0);
}
void uart1_int_handler(void) 
{
    // ISR content ...

	bootloader_prog_irqhandler(UART1);
}

void uart2_int_handler(void) 
{
    // ISR content ...
	//uart_irqhandler(UART2, 2);
}

void usart0_int_handler(void) 
{// when use lin demo,please uncomment lin_irqhandler function,and comment USART0_irqhandler function.

	// ISR content ...
	//lin_irqhandler(LIN0, 0);
}

void sio_int_handler(void) 
{
   // ISR content ...
}

void i2c_int_handler(void) 
{
    // ISR content ...
}
void spi0_int_handler(void) 
{
    // ISR content ...
}

void exi0_int_handler(void) 			
{
    // ISR content ...
}
void exi1_int_handler(void) 
{
    // ISR content ...
}
void exi2_3_int_handler(void) 
{
    // ISR content ...
}
void exi4_9_int_handler(void) 
{
    // ISR content ...
}
void exi10_15_int_handler(void) 
{
    // ISR content ...
}

void cnta_int_handler(void) 
{
    // ISR content ...
}
void tkey_int_handler(void) 
{
    // ISR content ...
}
void lpt_int_handler(void) 
{
    // ISR content ...
}
void led_int_handler(void) 
{


}
void cmp_int_handler(void) 
{

}
void bt0_int_handler(void) 
{
    // ISR content ...
	bootloader_bt_irqhandler(BT0);
}

void bt1_int_handler(void) 
{
}

void lcd_int_handler(void) 
{
    // ISR content ...

}

/*************************************************************/
/*************************************************************/
/*************************************************************/
void PriviledgeVioHandler(void) 
{
    // ISR content ...
	while(1){};
}

void SystemDesPtr(void) 
{
    // ISR content ...
	while(1){};
}

void MisalignedHandler(void) 
{
    // ISR content ...
	while(1){};
}

void IllegalInstrHandler(void) 
{
    // ISR content ...
	while(1){};
}

void AccessErrHandler(void) 
{
    // ISR content ...
	while(1){};
}

void BreakPointHandler(void) 
{
    // ISR content ...
	while(1){};
}

void UnrecExecpHandler(void) 
{
    // ISR content ...
	while(1){};
}

void Trap0Handler(void) 
{
    // ISR content ...
	while(1){};
}

void Trap1Handler(void) 
{
    // ISR content ...
	while(1){};
}

void Trap2Handler(void) 
{
    // ISR content ...
	while(1){};
}

void Trap3Handler(void) 
{
    // ISR content ...
	while(1){};

}

void PendTrapHandler(void) 
{
    // ISR content ...
	while(1){};
}




/******************* (C) COPYRIGHT 2020 APT Chip *****END OF FILE****/