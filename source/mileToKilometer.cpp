#include <iostream>
#define CATCH_CONFIG_RUNNER
#include <catch.hpp>

double  milesToKilometer (double i){
    return i * 1.609;
}

TEST_CASE (" describe_milesToKilometer ", "[milesToKilometer]")
{
  REQUIRE (milesToKilometer (20) == 32.18);
  REQUIRE (milesToKilometer (10) == 16.09);
  REQUIRE (milesToKilometer(1.5) == 2.4135);
}

int main (int argc , char * argv []) {
    double d;
    std::cout << "Please enter a distance in Miles:\n";
    std::cin >> d;
    std::cout << d << " Miles are: " << milesToKilometer(d) << " Kilometers \n";

    return Catch::Session().run( argc , argv );
}