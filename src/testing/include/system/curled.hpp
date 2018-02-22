//
// Created by overflow on 2/21/18.
//

#ifndef TESTING_CURLED_HPP
#define TESTING_CURLED_HPP

#include "testing/catch.hpp"

#include "json.hpp"
#include <curl/curl.h>
#include <iostream>
#include <string>

class Curled
{
public:
	Curled();
	~Curled();

	static nlohmann::json CurlToJsonBuf_POST_str(std::string url, std::string params);	
};

#endif //TESTING_CURLED_HPP
