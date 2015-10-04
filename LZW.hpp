/*
 * LZW.h
 *
 *  Created on: 30 вер. 2015
 *      Author: dimitriy
 */

#ifndef LZW_H_
#define LZW_H_

#include <string>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

class LZW {
private:
	int dictSize;
	map<string, int> create_alphabet();
	map<int, string> create_reverse_alphabet();
public:
	template<typename Iterator>
//	back_insert_iterator<vector<int>>
	Iterator compress(const string &uncompressed, Iterator result);
//	template <typename Iterator>
	template<typename Iterator>
	string decompress(Iterator begin, Iterator end);
};

template <class Iterator>
Iterator LZW::compress(const string &uncompressed, Iterator result) {
	map<string, int> dictionary = create_alphabet();
	string w;
	for (string::const_iterator it = uncompressed.begin(); it != uncompressed.end(); ++it) {
		char c = *it;
		string wc = w + c;
		if (dictionary.count(wc))
			w = wc;
		else {
			*result++ = dictionary[w];
			dictionary[wc] = dictSize++;
			w = string(1, c);
		}
	}
	if (!w.empty())
		*result++ = dictionary[w];
	return result;
}


template<class Iterator>
string LZW::decompress(Iterator begin, Iterator end) {
	map<int, string> dictionary = create_reverse_alphabet();
	string w(1, *begin++);
	string result = w;
	string entry;
	for (; begin != end; begin++) {
		int k = *begin;
		if (dictionary.count(k))
			entry = dictionary[k];
		else if (k == dictSize)
			entry = w + w[0];
		else
			throw "Bad compressed k";
		result += entry;
		dictionary[dictSize++] = w + entry[0];
		w = entry;
	}
	return result;
}


#endif /* LZW_H_ */
