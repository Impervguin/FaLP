domains
 num = integer.
 int = integer.

predicates
  rfactorial(num, int, int).
  factorial(num, int).
  rfibbonacci(num, int, int, int).
  fibbonacci(num, int).

clauses
  rfactorial(1, Acc, Acc) :- !.
  rfactorial(N, Acc, Res) :- N > 0,
    PrevN = N - 1,
    NewAcc = Acc * N,
    rfactorial(PrevN, NewAcc, Res).
  factorial(N, Result) :- rfactorial(N, 1, Result).
  
  
  rfibbonacci(1, _, F2, F2) :- !.
  rfibbonacci(N, F1, F2, Res) :- N > 1,
    NewF1 = F2,
    NewF2 = F1 + F2,
    PrevN = N - 1,
    rfibbonacci(PrevN, NewF1, NewF2, Res).
  fibbonacci(0, 0) :- !.
  fibbonacci(N, Result) :- rfibbonacci(N, 0, 1, Result).