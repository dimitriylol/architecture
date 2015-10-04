/*
 * OpenFile.h
 *
 *  Created on: 3 жовт. 2015
 *      Author: dimitriy
 */

#ifndef OPENFILE_H_
#define OPENFILE_H_

#include <fstream>
#include <iostream>
#include <iterator>
#include <algorithm>

namespace std {

class OpenFile {
public:
	OpenFile(string, ios_base::openmode);
	virtual ~OpenFile();
	string read_all();
	void write(string);
	template <typename Iterator>
	void write(Iterator begin, Iterator end);
	template <typename Range>
	Range read_all();
private:
	fstream stream;

};

template <typename Iterator>
void OpenFile::write(Iterator begin, Iterator end) {
	copy(begin, end, ostream_iterator<int>(stream, " "));
}

template <typename Range>
Range OpenFile::read_all() {
	Range res;
	istream_iterator<int> eos;
	for (istream_iterator<int> stream_iterator(stream); stream_iterator != eos; ++stream_iterator) {
		res.push_back(*stream_iterator);
	}
	return res;
}

} /* namespace std */

#endif /* OPENFILE_H_ */
