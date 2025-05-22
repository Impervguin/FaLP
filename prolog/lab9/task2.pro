domains
  num = integer.
  
predicates
  max2(num, num, num).
  max3(num, num, num, num).
  
  max2Cut(num, num, num).
  max3Cut(num, num, num, num).

clauses
  max2(Num1, Num2, Num2) :- Num2 >= Num1.
  max2(Num1, Num2, Num1) :- Num1 >= Num2.
  
  max3(Num1, Num2, Num3, Num1) :- Num1 >= Num2, Num1 >= Num3.
  max3(Num1, Num2, Num3, Num2) :- Num2 >= Num1, Num2 >= Num3.
  max3(Num1, Num2, Num3, Num3) :- Num3 >= Num2, Num3 >= Num1.
  
  max2Cut(Num1, Num2, Num2) :- Num2 >= Num1, !.
  max2Cut(Num1, _, Num1).
  
  max3Cut(Num1, Num2, Num3, Num1) :- Num1 >= Num2, Num1 >= Num3, !.
  max3Cut(_, Num2, Num3, Num2) :- Num2 >= Num3, !.
  max3Cut(_, _, Num3, Num3).
