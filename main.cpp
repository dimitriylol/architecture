/*
 * main.cpp
 *
 *  Created on: 1 жовт. 2015
 *      Author: dimitriy
 */

#include "LZW.hpp"
#include "OpenFile.hpp"

using namespace std;


int main(int argc, char* argv[]) {
	cout << "enter main" << endl;
	LZW* arch = new LZW(0,127);
	cout << "done LZW" << endl;
	OpenFile* encode_file = new OpenFile("encode.txt", fstream::out);
	cout << "begin opening" << endl;
	OpenFile* war = new OpenFile("some.txt", fstream::in);
	cout << "end opening" << endl;
	string str = "abacabadabacabae";
	cout << "begin encode" << endl;
	encode_file->write(arch->encode(war->read_all()));
	cout << "end encode" << endl;
	delete encode_file;
	cout << "begin reading encoding" << endl;
	OpenFile* file_for_decode = new OpenFile("encode.txt", fstream::in);
	str = file_for_decode->read_all();
	cout << "done reading encoding" << endl;
	delete file_for_decode;
	OpenFile* decode_file = new OpenFile("decode.txt", fstream::out);
	cout << "begin decoding" << endl;
	decode_file->write(arch->decode(str));
	cout << "end decoding" << endl;
	delete decode_file;
	return 0;
}



