MEMORY
{
	ROM (rx) :  ORIGIN = 0x10268040, LENGTH = 0x000C8000
	RAM (rwx) : ORIGIN = 0xf02FD800, LENGTH = 0x000ED800
}

SECTIONS
{
    . = 0x10268040;
	.initdata : ALIGN(4)
	{ 
		KEEP(*(.initdata));
	} > ROM	
	text : 
	{ 
	    *(.text) 
	} > ROM
	.rodata : ALIGN(4)
	{
	    *(.rodata)
	} > ROM
	.data : ALIGN(8)
	{
		PROVIDE_HIDDEN (__data_load = LOADADDR(.data));
		PROVIDE_HIDDEN (__data_start = .);
		*(.data)
		. = ALIGN (8);
		PROVIDE_HIDDEN (_edata = .);
	} > RAM  AT > ROM
	.bss : ALIGN(8)
	{
		PROVIDE_HIDDEN (__bss_start__ = .);
		*(.bss)
		. = ALIGN (8);
		PROVIDE_HIDDEN (__bss_end__ = .);
	} > RAM
}