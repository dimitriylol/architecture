/*
 * LZW.h
 *
 *  Created on: 30 вер. 2015
 *      Author: dimitriy
 */

#ifndef LZW_H_
#define LZW_H_

#include <string>
#include <bitset>
#include <iostream>
#include <map>

using namespace std;

class LZW {
private:
	char bits_size;
	char get_bits_size(char);
	char first_ascii;
	char last_ascii;
	int value;
	typedef map<string, bitset<bits_size>> type_alphabet;
	typedef map<int, string> type_reverse_alphabet;
	type_alphabet alphabet;
	type_reverse_alphabet reverse_alphabet;
	void create_alphabet();
	void create_reverse_alphabet();
	void add_to_alphabet(string);
	void reverse_add_to_alphabet(string);
	string string_butlast_char(string);
public:
	LZW(char first_ascii, char last_ascii);
	void encode(string to_encode, ostream out_stream=cout);
	string decode(istream in_stream=cin);
};

#endif /* LZW_H_ */
