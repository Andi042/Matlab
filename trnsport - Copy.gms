$title szallítási feladat 2.ora

$onText
2.ora
modosítva az első órai
tavaly kb ilyesmi feladat volt a zh ban
Hazi feladat:
szemét szállítás
"kapacitás"mindent el kell vinni
"igény" maxmum ennyit lehet vinni:
65 47 37 53 49
+ használt lerakó helyenként 1000

szabad ezeket használni zh-n
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
          5   29/
   ind(i) 'indítási költség' /1 15,2 38,3 43, 4 19/
*2.feladat: plussz költség, 1* fizetünk raktáranként ha van onnan szállítás
;
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
   z      'osszes költség'
*Új változo, szeretik az u betűt
   u(i)   'szállitok e onnan'
;

Positive Variable x;
Binary Variable u;
*binary = bool
*kommentek jók ez alatt
Equation
   cost      
   supply(i) ''
   demand(j) 'kisszék kisszék hóember';
*idáig xD
cost..      z =e= sum((i,j), c(i,j)*x(i,j)) + sum(i, ind(i)*u(i));
*nem értem a logikát, mármint honnan jön az u(i) vagy x(i,j) értéke
supply(i).. sum(j, x(i,j)) =l= a(i)*u(i);
*érték?????????????
demand(j).. sum(i, x(i,j)) =g= b(j);

Model transport / all /;

solve transport using mip minimizing z;
*lp nem lehet diszkrét szoval mip lett
*a hibák száma = a valós hibák száma
display x.l, x.m;
