#include "../drivers/ports.h"

void main() {
	/* Screen cursor position: ask VGA control register (0x3d4) for bytes
	 * 14 = high byte of cursor and 15 = low byte of cursor. */
	port_byte_out(0x3d4, 14); /* Requesting byte 14: high byte of cursor pos */
	/* Data is returned in VGA data register (0x3d5) */
	//int position = port_byte_in(0x3d5);
	//position = position << 8; /* high byte */
	int high_byte = port_byte_in(0x3d5);

	port_byte_out(0x3d4, 15); /* requesting low byte */
	//position += port_byte_in(0x3d5);
	int low_byte = port_byte_in(0x3d5);

	int position = (high_byte << 8) + low_byte;

	/* VGA 'cells' consist of the character and its control data
	 * e.g. 'white on black background', 'red text on white bg', etc */
	int offset_from_vga = position * 2;

	/* Now you can examine both variables using gdb, since we still
	 * don't know how to print strings on screen. Run 'make debug' and
	 * on the gdb console:
	 * breakpoint kernel.c:21
	 * continue
	 * print position
	 * print offset_from_vga
	 */

	/* Let's write on the current cursor position, we already know how 
	 * to do that */
	char *vga = 0xb8000;
	vga[offset_from_vga] = 'Y';
	//vga[offset_from_vga] = 'X';
	//vga[offset_from_vga+1] = 0x0f; /* White text on black background */
	vga[offset_from_vga+1] = 0x0e; /* White text on black background */
}
