/*
 * LZW.cpp
 *
 *  Created on: 30 вер. 2015
 *      Author: dimitriy
 */

#include "LZW.h"

void LZW::add_to_alphabet(string str) {
	if (bits_size != get_bits_size(value))
		bits_size++;
	alphabet[str] = bitset<bits_size>(value++);
}

void LZW::reverse_add_to_alphabet(string str) {
	if (bits_size != get_bits_size(value))
		bits_size++;
	reverse_alphabet[value++] = str;
}

string LZW::string_butlast_char(string str) {
	string tmp = str.substr(0, str.length() - 1);
	return (tmp.empty()) ? str : tmp;
}

char LZW::get_bits_size(char val) {
	if (val == 0)
		throw runtime_error("first ascii code == second ascii code");
	return ceil(log10(val)/log10(2));
}

void LZW::create_alphabet() {
	value = 0;
	while (first_ascii <= last_ascii)
		add_to_alphabet(string(1, first_ascii++));
}

void LZW::create_reverse_alphabet() {
	value = 0;
	while (first_ascii <= last_ascii)
		reverse_add_to_alphabet(string(1, first_ascii++));
}

LZW::LZW(char first_ascii, char last_ascii) {
	if (first_ascii > last_ascii)
		throw runtime_error("first ascii code larger than last ascii code");
	LZW::first_ascii = first_ascii;
	LZW::last_ascii = last_ascii;
	bits_size = get_bits_size(last_ascii - first_ascii);
	create_reverse_alphabet();
	create_alphabet();
}

void LZW::encode(string to_encode, ostream out_stream) {
	string res;
	string::iterator next_sym = to_encode.begin();
	string current_str(1, *next_sym);
	for (; next_sym != to_encode.end(); next_sym++) {
		current_str += string(1, *next_sym);
		if (alphabet.find(current_str) == alphabet.end())
			out_stream << stoi(alphabet.find(string_butlast_char(current_str))->second.to_string(), nullptr, 2);
			add_to_alphabet(current_str);
	}
}

string LZW::decode(istream in_stream) {
	create_reverse_alphabet();

	string res;
	return string(1, '!');
}

