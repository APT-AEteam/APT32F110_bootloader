/*============================================================================
 * Name        : main.c
 * Author      : $(username)
 * Version     : 0.0.0
 * Copyright   : Your copyright notice
 * Description : Simple function in C, Ansi-style
 *============================================================================
 */

#include <string.h>
#include <sys_clk.h>
#include <drv/gpio.h>
#include <drv/eflash.h>
#include <drv/pin.h>
#include <drv/bt.h>
#include <drv/iwdt.h>

#include "iostring.h"
#include "csp_syscon.h"
#include "csp_gpio.h"
#include "csp_coret.h"
#include "csp.h"
#include "bootloader.h"

extern void bootloader_system_init(void);
extern int bootloader_program_option(void);
extern int bootloader_program_loading(void);
extern int bootloader_jump_function(void);
extern void bootloader_reset(void);
/**
 * @brief the main entry of the application; when run to here, the system has been initialized includes:
 * 1 CPU processor status register
 * 2 CPU vector base register
 * 3 CPU Units such as MGU, Cache...
 * 4 IO base address
 *
 * @return For MCU application, it's better to loop here
 */
 
 
uint8_t byBootMode = STARTCHECK_MODE;//STARTCHECK_MODE;

int main()
{
	int iRet = 0; 	
	
	bootloader_system_init();
	bootloader_printf_init();
	csi_bt_timer_init(BT0, BT_INT_TIMER_US);		//初始化BT0, 定时10us； BT定时，默认采用PEND中断
	csi_bt_start(BT0);					//启动定时器
	bootloader_send_back_str("boot\n",5);
	while(1)
	{
		switch(byBootMode)
		{
			case STARTCHECK_MODE:
				byBootMode = bootloader_program_option();
				break;
			case BOOTLOADER_MODE:
				iRet = bootloader_program_loading();
				if(iRet ==0) byBootMode = JUMPAPP_MODE;
				else byBootMode = BOOTLOADER_MODE;
				break;
			case JUMPAPP_MODE:
				iRet = bootloader_jump_function();	
				if(iRet ==1) byBootMode = BOOTLOADER_MODE;
				else bootloader_reset();
				break;
			default:
				bootloader_reset();
				break;
		}	
	}
	return 0;	
}
