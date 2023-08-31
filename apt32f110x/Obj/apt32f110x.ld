/*
 * Auto generated link script by CDK
 * Do not modify this file, and any manual changes will be erased!!!
 */

ENTRY(Reset_Handler)

MEMORY
{
  RW_RAM1 : ORIGIN = 0x20000000, LENGTH = 0x80000
}
SECTIONS
{
  RW_RAM1 : {
    . = ALIGN(0x4);
    __s_ram_data_1 = .;
    .ANY(.data*)
    . = ALIGN(0x4);
    __e_ram_data_1 = .;
  } >RW_RAM1  AT>LR_ROM1
  BSS_RW_RAM1 : {
    . = ALIGN(0x4);
    __s_ram_bss_1 = .;
    .ANY(.bss* COMMON)
    . = ALIGN(0x4);
    __e_ram_bss_1 = .;
    KEEP(*.o(.csky_stack))
    KEEP(*.o(.csky_heap))
  } >RW_RAM1
}
