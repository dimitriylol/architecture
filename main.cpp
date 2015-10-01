/*
 * main.cpp
 *
 *  Created on: 1 жовт. 2015
 *      Author: dimitriy
 */

#include "LZW.h"
#include <fstream>
#include <iterator>

using namespace std;

int main(int argc, char* argv[]) {
	LZW* arch = new LZW('a','z');
	filebuf encode_file;
	encode_file.open("encode.txt", ios::out);
	ostream encode_stream(&encode_file);
	string str = "abacabadabacabae";
	encode_stream << arch->encode(str);
	encode_file.close();
//	cout << "encode " << arch->encode(str) << endl;
	filebuf decode_file;

	cout << "decode " << arch->decode(arch->encode(str)) << endl;

	return 0;
}



