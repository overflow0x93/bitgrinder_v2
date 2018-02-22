#include "include/benchmark.hpp"

int main(int argc, char *argv[]) {
	curlBenchmark(10);
    return 0;
}

void curlBenchmark(int testCount)
{

// Strings
std::string url = "http://data.gate.io/api2/1/tradeHistory/eos_eth/4000000";
std::string params;

std::cout << "==========================================================\r\n";
std::cout << "Curl Benchmarks\r\n";
std::cout << "==========================================================\r\n\r\n";
std::cout << "GET: \r\n\r\n";


std::cout << "Curl to JSON w/ POST support; url,params = std::string\r\n";
for(int bcnt = 0; bcnt < testCount; ++bcnt)
{
auto start = std::chrono::steady_clock::now();
nlohmann::json outResult = Curled::CurlToJsonBuf_POST_str(url, params);
auto end = std::chrono::steady_clock::now();

outResult.dump();
std::cout << "Duration: " << std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count() << " ns\r\n";
std::cout << "Duration: " << std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << " µs\r\n";
std::cout << "Duration: " << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() << " ms\r\n";
}

std::cout << "POST: \r\n\r\n";


}
