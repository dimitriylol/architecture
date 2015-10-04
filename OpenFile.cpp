/*
 * OpenFile.cpp
 *
 *  Created on: 3 жовт. 2015
 *      Author: dimitriy
 */

#include "OpenFile.hpp"

namespace std {

OpenFile::OpenFile(string file_name, ios_base::openmode mode) {
	stream.open(file_name.data(), mode);
}

OpenFile::~OpenFile() {
	stream.close();
}

string OpenFile::read_all() {
	return string(istreambuf_iterator<char>(stream), std::istreambuf_iterator<char>());
}

void OpenFile::write(string str) {
	stream << str;
}

}
