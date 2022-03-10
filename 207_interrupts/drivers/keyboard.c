#include "keyboard.h"
#include "ports.h"
#include "../cpu/isr.h"
#include "screen.h"

static void keyboard_callback(registers_t regs) {
	//The pic leaves us the scancode in port 0x60
	u8 scancode = port_byte_in(0x60);
	char *sc_ascii;
	int_to_ascii(scancode, sc_ascii);
	kprint("Keyboard scancode: ");
	kprint(sc_ascii);
	kprint(", ");
	print_letter(scancode);
	kprint("\n");
}

void init_keyboard() {
	register_interrupt_handler(IRQ1, keyboard_callback);
}

void print_letter(u8 scancode) {
	char *cmap[] = { "ERROR", "ESC", "1", "2", "3", "4", "5", "6", "7", "8", "9",
		"0", "-", "+", "Backspace", "Tab", "Q", "W", "E", "R", "T", "Y", "U",
		"I", "O", "P", "[", "]", "Enter", "LCtrl", "A", "S", "D", "F", "G",
		"H", "J", "K", "L", ";", "'", "`", "LShift", "\\", "Z", "X", "C",
		"V", "B", "N", "M", ",", ".", "/", "Rshift", "Keypad *", "LAlt",
		"Spc"};

	if (scancode <= 0x39) kprint(cmap[scancode]);
	else if (scancode <= 0x39 + 0x80) kprint(cmap[scancode - 0x80]);
	else kprint("Unknown key up");
}
