#include <iostream>
#include <cmath>
#define CATCH_CONFIG_RUNNER
#include <catch.hpp>

int dividable (){ // Kleinste Zahl teilbar durch 1-20
  int r = 20;
  int g = 1;
  while (g <= 20){
    if (r % g != 0){
      r += 20;
      g = 1;
    }
    g ++;
  }
  return r;
}

int checksum (int q){ // Quersumme
  int sum = 0;
  while (q > 0){
    sum += q % 10;
    q /= 10;
  }
  return sum;
}

TEST_CASE (" describe_checksum ", "[checksum]")
{
  REQUIRE (checksum (117017) == 17);
  REQUIRE (checksum (18) == 9);
  REQUIRE (checksum (78) == 15);
}

int sumMultiples (){ // 1-1000 aufaddiert die durch 3 oder 5 teilbar sind
  int x = 0;
  for (int i = 1; i <= 1000; i++){
    if (i % 3 == 0 or i % 5 == 0){
      x += i;
    }
  }
  return x;
}

double fract (double i){ // Nachkommaanteil 
  int d = i;
  return i - d;
}

TEST_CASE (" describe_fract ", "[fract]")
{
  REQUIRE (fract (1.347) == Approx(0.347));
  REQUIRE (fract (9.876) == Approx(0.876));
  REQUIRE (fract (3.789) == Approx(0.789));
}

double volume (double radius, double height){ // Volumen Zylinder
  return M_PI * pow(radius,2) * height;
}

TEST_CASE (" describe_volume ", "[volume]")
{
  REQUIRE (volume (3,4) == Approx(113.0976));
  REQUIRE (volume (5,3) == Approx(235.6196));
  REQUIRE (volume (1.23,4.5) == Approx(21.38816));
}

double surface (double radius, double height){ // Oberfäche Zylinder
  return 2 * M_PI * radius * (radius + height);
} 

TEST_CASE (" describe_surface ", "[surface]")
{
  REQUIRE (surface (3,5) == Approx (150.796));
  REQUIRE (surface (7,2) == Approx (395.841));
  REQUIRE (surface (5,3) == Approx (251.327));
}

int factorial (int n){ //Fakultät
  long int z = 1;
  for (int i = 1; i <= n; i++){
    z *= i;
  }
  return z;
}

TEST_CASE (" describe_factorial ", "[factorial]")
{
  REQUIRE (factorial (3) == 6);
  REQUIRE (factorial (5) == 120);
  REQUIRE (factorial (1) == 1);
}

int binomial (int n , int k){ // Binomialkoeffizient 
  if ( n < k){
    std::cout << "The first number has to be larger or the same, n >= k" << "\n";
    return 0;
  }
  else {
    return (factorial(n) / (factorial(k) * factorial(n-k)));
  }
}

TEST_CASE (" describe_binomial ", "[binomial]")
{
  REQUIRE (binomial (4,3) == 4);
  REQUIRE (binomial (8,5) == 56);
  REQUIRE (binomial (2,1) == 2);
}

bool is_prime (int n){ // Primzahltest 
  for(int i = 2; i < n; i++ ){
    if (n % i == 0){
      return false;
    }
  }
  return true;
}

TEST_CASE (" describe_is_prime ", "[is_prime]") 
{
  REQUIRE (is_prime (12) == false);
  REQUIRE (is_prime (17) == true);
  REQUIRE (is_prime (20) == false);
}

int main(int argc , char * argv [])
{

  std::cout << "This number can be divided by 1-20: " << dividable() <<"\n";

  int q;
  std::cout << "Please enter the integer of which you want the cross sum to be calculated of:\n";
  std::cin >> q;
  std::cout << "The cross sum of " << q << " is: " << checksum(q) << "\n";

  std::cout << "This is the sum of all the numbers between 1-1000 which are dividable by 3 or 5: " << sumMultiples() << "\n";

  double i;
  std::cout << "Please enter the floating-point number of which you want the decimal portion:\n ";
  std::cin >> i;
  std::cout << "The result is: " << fract (i) << "\n";

  double r;
  double h;
  std::cout << "Please enter the radius and the height of the cylinder of which you want to know the volume:\n";
  std::cin >> r;
  std::cin >> h;
  std::cout << "The volume is: " << volume(r,h) << "\n";

  double a;
  double o;
  std::cout << "Please enter the radius and the height of the cylinder of which you want to know the surface:\n";
  std::cin >> a;
  std::cin >> o;
  std::cout << "The surface is: " << surface(a,o) << "\n";

  int g;
  std::cout << "Please enter the integer of which you want the factorial to be calculated of:\n";
  std::cin >> g;
  std::cout << "The factorial of "<< g << " is: " << factorial (g) << "\n";

  int n;
  int k;
  std::cout << "Please enter the two integers of which you want the binomial coefficient to be calculated of:\n";
  std::cin >> n;
  std::cin >> k;
  std::cout << "The binomial coefficient of " << n << " and " << k << " is: " << binomial(n,k) << "\n";

  int p;
  std::cout << "Please enter an integer from which you want to know wether it is prime:\n";
  std::cin >> p;
  if(is_prime(p) == true){
    std::cout << "The integer is prime. \n";
  }
  else if (is_prime(p) == false){
    std::cout << "The integer is not prime. \n";
  }

  /*std::cout << "Hello, World!\n";
  return 0;*/

  return Catch::Session().run( argc , argv );
}
