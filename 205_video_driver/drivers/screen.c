#include "screen.h"
#include "ports.h"

//private function declarations
int get_cursor_offset();
void set_cursor_offset(int offset);
int print_char(char c, int col, int row, char attr);
int get_offset(int col, int row);
int get_offset_row(int offset);
int get_offset_col(int offset);

//Public Kernel API functions

void kprint_at(char *message, int col, int row) {
	int offset; //Set cursor if col/row are negative
	if (col >= 0 && row >= 0)
		offset = get_offset(col, row);
	else {
		offset = get_cursor_offset();
		row = get_offset_row(offset);
		col = get_offset_col(offset);
	}

	//Loop through message and print it
	int i = 0;
	while(message[i] != 0) {
		offset = print_char(message[i++], col, row, WHITE_ON_BLACK);
		//Computer row/col for next iteration
		row = get_offset_row(offset);
		col = get_offset_col(offset);
	}
}

void kprint(char *message) {
	kprint_at(message, -1, -1);
}

//Private kernel functions


//Innermost print function for kernel. Directly accesses video memory.
//col/row neg(i.e. undefined) => print at current cursor location
//attr is zero => white on black as default attribute.
//Returns offset of the next character. Sets the video cursor to the returned offset

int print_char(char c, int col, int row, char attr) {
	unsigned char *vidmem = (unsigned char*) VIDEO_ADDRESS;
	if (!attr) attr = WHITE_ON_BLACK;

	//Error control, print red 'E' if coords are out of bounds.
	if(col >= MAX_COLS || row >= MAX_ROWS) {
		vidmem[2*(MAX_COLS)*(MAX_ROWS)-2] = 'E';
		vidmem[2*(MAX_COLS)*(MAX_ROWS)-1] = RED_ON_WHITE;
		return get_offset(col, row);
	}

	int offset;
	if (col >= 0 && row >= 0) offset = get_offset(col, row);
	else offset = get_cursor_offset();

	if (c == '\n') {
		row = get_offset_row(offset);
		offset = get_offset(0, row+1);
	} else {
		vidmem[offset] = c;
		vidmem[offset+1] = attr;
		offset += 2;
	}
	set_cursor_offset(offset);
	return offset;
}

int get_cursor_offset() {
	//use VGA ports to get current cursor position
	//data 14 is high byte, data 15 is low byte.
	int offset;
	port_byte_out(REG_SCREEN_CTRL, 14);
	int high_byte = port_byte_in(REG_SCREEN_DATA); 
	port_byte_out(REG_SCREEN_CTRL, 15);
	int low_byte = port_byte_in(REG_SCREEN_DATA);
	offset = (high_byte << 8) + low_byte;
	return offset * 2; //position * size of character cell
}

void set_cursor_offset(int offset) {
	//Similar to get_cursor_offset, but instead of reading we write data
	offset /= 2;
	port_byte_out(REG_SCREEN_CTRL, 14);
	port_byte_out(REG_SCREEN_DATA, (unsigned char)(offset >> 8));
	port_byte_out(REG_SCREEN_CTRL, 15);
	port_byte_out(REG_SCREEN_DATA, (unsigned char)(offset & 0xff));
}

void clear_screen() {
	int screen_size = MAX_COLS * MAX_ROWS;
	int i;
	char *screen = VIDEO_ADDRESS;

	for (i = 0; i < screen_size; i++) {
		screen[i*2] = ' ';
		screen[i*2+1] = WHITE_ON_BLACK;
	}
	set_cursor_offset(get_offset(0, 0));
}

int get_offset(int col, int row) { return 2 * (row * MAX_COLS + col); }
int get_offset_row(int offset) { return offset / (2 * MAX_COLS); }
int get_offset_col(int offset) { return (offset - (get_offset_row(offset) * 2 * MAX_COLS))/2; } //Wait, does this really need to be this complicated?
