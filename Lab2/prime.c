/*
 prime.c
 By David Broman.
 Last modified by Thomas Gustafsson 2022-02-10
*/

#include <stdio.h>

int is_prime(int n)
{
  int c;  // räknare

  if(n == 1 || n == 0) // fixar att utskriften inte blir 1 när n är 1 eller 0, de är inte primtal.
    return 0;

  for (c = 2; c <= n-1; c++) // 2 är det minsta möjliga primtalet, for-loopen kör så länge n är större än 2.
  {
    if (n%c==0) // om c divideras med den givna siffran n med 0 i rest är n inte ett primtal.
      return 0;
  }
  return 1; // annars är n ett primtal
}

int main(void){
  printf("%d\n", is_prime(11));  // 11 is a prime.      Should print 1.
  printf("%d\n", is_prime(383)); // 383 is a prime.     Should print 1.
  printf("%d\n", is_prime(987)); // 987 is not a prime. Should print 0.
  printf("%d\n", is_prime(1)); //1 is not a prime. should print 0
  printf("%d\n", is_prime(103)); // 103 is a prime.     Should print 1.
}
