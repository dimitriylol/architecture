/*
 * LZW.cpp
 *
 *  Created on: 30 вер. 2015
 *      Author: dimitriy
 */

#include "LZW.h"

void LZW::inc_bits_size() {
	try {
		if (bits_size < get_bits_size(value))
			bits_size++;
	}
	catch (const runtime_error& err) { }
}

string LZW::dec2bin(int number) {
    string result = "";
    do {
        if ( (number & 1) == 0 )
            result += "0";
        else
            result += "1";
        number >>= 1;
    } while ( number );
    result.resize(bits_size, '0');
    reverse(result.begin(), result.end());
    return result;
}

int bin2dec(string number) {
    int result = 0, pow = 1;
    for ( int i = number.length() - 1; i >= 0; --i, pow <<= 1 )
        result += (number[i] - '0') * pow;
    return result;
}

void LZW::add_to_alphabet(string str) {
	inc_bits_size();
	alphabet[str] = value++;
}

void LZW::add_to_reverse_alphabet(string str) {
	inc_bits_size();
	reverse_alphabet[value++] = str;
}

string LZW::string_butlast_char(string str) {
	string tmp = str.substr(0, str.length() - 1);
	return (tmp.empty()) ? str : tmp;
}

int LZW::get_bits_size(char val) {
	if (val == 0)
		throw runtime_error("first ascii code == second ascii code");
	return ceil(log10(val)/log10(2));
}

void LZW::create_alphabet() {
	value = 0;
	char i = first_ascii;
	while (i <= last_ascii)
		add_to_alphabet(string(1, i++));
}

void LZW::create_reverse_alphabet() {
	char i = first_ascii;
	value = 0;
	while (i <= last_ascii)
		add_to_reverse_alphabet(string(1, i++));
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

void LZW::print_alphabet() {
	for (auto& kvp: alphabet)
		cout << "key " << kvp.first << " val " << dec2bin(kvp.second) << endl;
}

string LZW::encode(string to_encode) {
	string res;
	bits_size = get_bits_size(last_ascii - first_ascii);
	string::iterator next_sym = to_encode.begin();
	string current_str = string(1, *next_sym++);
	for (; next_sym != to_encode.end(); next_sym++) {
		current_str += string(1, *next_sym);
		if (alphabet.find(current_str) == alphabet.end()) {
			res += dec2bin(alphabet.at(string_butlast_char(current_str)));
			add_to_alphabet(current_str);
			current_str = string(1, *next_sym);
		}
	}
	return res;
}
//  00000 00001 00000 00010 11010 00000 00011 11110 011101 011011
string LZW::decode(string to_decode) {
	string res;
	bits_size = get_bits_size(last_ascii - first_ascii);
	string current_str;
	int num;
	size_t i = 0;
	cout << "to_decode " << to_decode << endl;
	while (i < to_decode.length()) {
		if (!current_str.empty())
			add_to_reverse_alphabet(current_str);
		num = bin2dec(to_decode.substr(i, i + bits_size));
		res += reverse_alphabet.at(num);
		current_str = reverse_alphabet.at(num);
		i += bits_size;
	}
	return res;
}

