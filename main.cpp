/*
 * main.cpp
 *
 *  Created on: 1 жовт. 2015
 *      Author: dimitriy
 */

#include "LZW.hpp"
#include "OpenFile.hpp"
#include <vector>

using namespace std;

int generate_file() {
  OpenFile* new_file = new OpenFile("generated.txt", fstream::out);
  vector<int> tmp;
  for(int i = 0; i<0x0ffffee; i++) {
    tmp.push_back(i);
  }
  new_file->write(tmp.begin(), tmp.end());
  return 1;
}

int main(int argc, char* argv[]) {
	vector<int> compressed;
	LZW *arch = new LZW();
	generate_file();
	OpenFile* encode_file = new OpenFile("encode.txt", fstream::out);
	OpenFile* war =  new OpenFile("generated.txt", fstream::in);
	arch->compress(war->read_all(),back_inserter(compressed));
	encode_file->write(compressed.begin(), compressed.end()); 
	delete encode_file;
	OpenFile* file_for_decode = new OpenFile("encode.txt", fstream::in);
	OpenFile* decode_file = new OpenFile("decode.txt", fstream::out);
	compressed = file_for_decode->read_all<vector<int> >();
	decode_file->write(arch->decompress(compressed.begin(), compressed.end()));
	delete decode_file;
	return 0;
}

