/* 
triangle(A, B, C, R).
 es cierto si R unifica con "equilateral" y A, B y C corresponden a la longitud de un triangulo equilatero.
 es cierto si R unifica con "isosceles" y A, B y C corresponden a la longitud de un triangulo isosceles.
 es cierto si R unifica con "escaleno" y A, B y C corresponden a la longitud de un triangulo escaleno.


Auxiliar:

triangle(A, B, C)
  es cierto si A, B y C corresponden a las longitudes de los lados de un triangulo

 */

triangle(A, B, C, R):- comprobaciontriangulo(A, B, C), triangle2(A, B, C ,R).

comprobaciontriangulo(A, B, C):- L1 is A + B, L1 >= C, L2 is B + C, L2 >= A, L3 is A + C, L3 >= B, A > 0, B > 0, C > 0.



triangle2(A, B, C, "equilateral"):- A = B, A = C.
triangle2(A, B,C, "isosceles"):- A = B, A \= C.
triangle2(A, B, C, "isosceles"):- A = C, A \= B.
triangle2(A, B, C, "isosceles"):- B = C, B \= A.
triangle2(A, B, C, "scalene"):- A \= B, A \= C, B \= C.
 
 
