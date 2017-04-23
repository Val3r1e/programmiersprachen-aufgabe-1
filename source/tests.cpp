#define CATCH_CONFIG_RUNNER
#include <catch.hpp>
#include <cmath>

int gcd (int a, int b){
  int r = a % b;
  if(r == 0){
    return b;
  }
  else{
    return gcd(b,r);
  }
}

TEST_CASE (" describe_gcd ", "[gcd]")
{
  REQUIRE (gcd (2 ,4) == 2);
  REQUIRE (gcd (9 ,6) == 3);
  REQUIRE (gcd (3 ,7) == 1);
}



int main (int argc , char * argv [])
{
  int a;
  int b;
  std::cout << "Please enter the two integers of which you want to know the gcd:\n";
  std::cin >> a;
  std::cin >> b;
  std::cout << "The gcd is: " << gcd(a,b) << "\n";
  return Catch::Session().run( argc , argv );
}
