domains
 num = integer.
 int = integer.

predicates
  factorial(num, int).
  fibbonacci(num, int).

clauses
  factorial(1, 1) :- !.
  factorial(N, Result) :- N > 0,
    PrevN = N - 1,
    factorial(PrevN, PrevResult), !,
    Result = PrevResult * N.
  
  fibbonacci(0, 1) :- !.
  fibbonacci(1, 1) :- !.
  fibbonacci(N, Result) :- N > 1,
    PrevN = N - 1,
    PrevPrevN = N - 2,
    fibbonacci(PrevN, PrevResult), !,
    fibbonacci(PrevPrevN, PrevPrevResult), !,
    Result = PrevResult + PrevPrevResult.
