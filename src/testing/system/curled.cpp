#include "../include/system/curled.hpp"

Curled::Curled()
{}
Curled::~Curled()
{}

static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp) {
    ((std::string *) userp)->append((char *) contents, size * nmemb);
    return size * nmemb;
}

nlohmann::json Curled::CurlToJsonBuf_POST_str(std::string url, std::string params) {
    CURL *curl;
    CURLcode res;
    curl = curl_easy_init();
    std::string outBuffer;
    //nlohmann::json jsonResult;
    nlohmann::json jsonResult{};

    if (curl) {
        struct curl_slist *chunk = nullptr;
        //std::string tURL = api_url;
        //tURL.append("");
        //tURL.append(url);
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
//        curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

        chunk = curl_slist_append(chunk, "Accept: application/x-www-form-urlencoded");
        chunk = curl_slist_append(chunk, "Content-type: application/x-www-form-urlencoded");
        chunk = curl_slist_append(chunk, "Charsets: utf-8");

        std::string parameters = params;

        // Attempt to write results to buffer for processing
//        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &outBuffer);
        chunk = curl_slist_append(chunk, "Accept:");

        if (!params.empty()) { // if (params != "") {
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, params.c_str());
            curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, params.length());
// Parameters require post data::
            curl_easy_setopt(curl, CURLOPT_POST, 1L);

        }
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, chunk);

        res = curl_easy_perform(curl);

        // Check for errors
        if (res != CURLE_OK) {
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));
            jsonResult = {{"result", "fail"}};
            //json jsonResult = {{"result":"fail"}};
        } else {
            auto j3 = nlohmann::json::parse(outBuffer);
            jsonResult = j3;
        }
        // always cleanup
        curl_easy_cleanup(curl);

        // free the custom headers
        curl_slist_free_all(chunk);
    }
    return jsonResult;
}
