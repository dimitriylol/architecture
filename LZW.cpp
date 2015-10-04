/*
 * LZW.cpp
 *
 *  Created on: 30 вер. 2015
 *      Author: dimitriy
 */

#include "LZW.hpp"

using namespace std;

map<string, int> LZW::create_alphabet() {
	dictSize = 256;
	map<string, int> dictionary;
	for (int i = 0; i < 256; i++)
		dictionary[string(1, i)] = i;
	return dictionary;
}

map<int, string> LZW::create_reverse_alphabet() {
	dictSize = 256;
	map<int, string> dictionary;
	for (int i = 0; i < 256; i++)
		dictionary[i] = string(1, i);
	return dictionary;
}

