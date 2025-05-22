domains
  intlist = integer*.
  num = integer.

predicates
  length(intlist, num).
  rlength(intlist, num, num).
  
  sum(intlist, num).
  rsum(intlist, num, num).
  
  oddsum(intlist, num).
  roddsum(intlist, num, num).
  
  listbigger(intlist, num, intlist).
  
  delone(intlist, num, intlist).
  delall(intlist, num, intlist).
  
  join(intlist, intlist, intlist).
 
clauses
  length(List, Length) :- rlength(List, 0, Length).
  rlength([], Length, Res) :- Res = Length, !.
  rlength([_ | Tail], Length, Res) :- NewLen = Length + 1, rlength(Tail, NewLen, Res), !.
  
  sum(List, Sum) :- rsum(List, 0, Sum).
  rsum([], Sum, Res) :- Res = Sum, !.
  rsum([Elem | Tail], Sum, Res) :- NewSum = Sum + Elem, rsum(Tail, NewSum, Res), !.
  
  oddsum(List, Sum) :- roddsum(List, 0, Sum).
  roddsum([], Sum, Res) :- !, Res = Sum.
  roddsum([_], Sum, Res) :- !, Res = Sum.
  roddsum([_, Elem | Tail], Sum, Res) :- NewSum = Sum + Elem, roddsum(Tail, NewSum, Res), !.
  
  
  listbigger([Elem | Tail], Big, [Elem | ResTail]) :- Elem > Big, !, listbigger(Tail, Big, ResTail).
  listbigger([_ | Tail], Big, ResTail) :- !, listbigger(Tail, Big, ResTail).
  listbigger([], _, []).
  
  delone([Elem | Tail], Num, ResTail) :- Elem = Num, !, ResTail = Tail.
  delone([Elem | Tail], Num, [Elem | ResTail]) :- !, delone(Tail, Num, ResTail).
  delone([], _, []).
  
  delall([Elem | Tail], Num, ResTail) :- Elem = Num, !, delall(Tail, Num, ResTail).
  delall([Elem | Tail], Num, [Elem | ResTail]) :- !, delall(Tail, Num, ResTail).
  delall([], _, []).
  
  join([Elem | Tail], List, [Elem | ResTail]) :- !, join(Tail, List, ResTail).
  join([], [Elem | Tail], [Elem | ResTail]) :- !, join(Tail, [], ResTail).
  join([], [], []).
