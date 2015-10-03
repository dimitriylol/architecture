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
#include <math.h>
#include <algorithm>

using namespace std;

class LZW {
private:
	int bits_size;
	int get_bits_size(char);
	char first_ascii;
	char last_ascii;
	int value;
	typedef map<string, int> type_alphabet;
	typedef map<int, string> type_reverse_alphabet;
	type_alphabet alphabet;
	type_reverse_alphabet reverse_alphabet;
	void create_alphabet();
	void create_reverse_alphabet();
	void add_to_alphabet(string);
	void inc_bits_size();
	void add_to_reverse_alphabet(string);
	string string_butlast_char(string);
	string dec2bin(int);
public:
	void print_alphabet();
	LZW(char first_ascii, char last_ascii);
	string encode(string to_encode);
	string decode(string to_decode);
};

#endif /* LZW_H_ */
