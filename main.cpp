/*
 * main.cpp
 *
 *  Created on: 1 жовт. 2015
 *      Author: dimitriy
 */

#include "LZW.h"
#include "OpenFile.h"

using namespace std;


int main(int argc, char* argv[]) {
	LZW* arch = new LZW('a','z');
	OpenFile* encode_file = new OpenFile("encode.txt", fstream::out);
	string str = "abacabadabacabae";
	encode_file->write(arch->encode(str));
	delete encode_file;
	OpenFile* file_for_decode = new OpenFile("encode.txt", fstream::in);
	str = file_for_decode->read_all();
	delete file_for_decode;
	OpenFile* decode_file = new OpenFile("decode.txt", fstream::out);
	decode_file->write(arch->decode(str));
	delete decode_file;
	return 0;
}



