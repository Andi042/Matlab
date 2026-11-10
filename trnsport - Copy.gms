$title szallítási feladat 2.ora

$onText
2.ora
modosítva az első órai
$offText

Set
   i 'raktárak' / 1*4 / 
   j 'boltok'   / 1*5 /;
*1től 5ig sorszámozva 
Parameter
   a(i) 'kapacitás'
        / 1 15,2 28,3 33,4 42/
*lehet egy sorban is és akkor kell közötte vessző
   b(j) 'bolt igény'
        / 1   5
          2   15
          3   27
          4   13
          5   29/;
*pontos vessző a kiemelt szavanként 1 van
Table c(i,j) 'szállítási költség'
  1 2 3 4 5
1 1 3 5 2 6 
2 2 8 3 7 1
3 1 4 1 3 5
4 2 3 1 7 2
;


Variable
   x(i,j) 'honnét hova mennyit viszünk'
   z      'osszes költség';

Positive Variable x;
*kommentek jók ez alatt
Equation
   cost      
   supply(i) ''
   demand(j) 'kisszék kisszék hóember';

cost..      z =e= sum((i,j), c(i,j)*x(i,j));

supply(i).. sum(j, x(i,j)) =l= a(i);

demand(j).. sum(i, x(i,j)) =g= b(j);

Model transport / all /;

solve transport using lp minimizing z;

display x.l, x.m;
