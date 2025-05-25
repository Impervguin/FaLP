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
  rlength([], Length, Length) :- !.
  rlength([_ | Tail], Length, Res) :- NewLen = Length + 1, rlength(Tail, NewLen, Res).
  length(List, Length) :- rlength(List, 0, Length).
  
  rsum([], Sum, Sum) :- !.
  rsum([Elem | Tail], Sum, Res) :- NewSum = Sum + Elem, rsum(Tail, NewSum, Res).
  sum(List, Sum) :- rsum(List, 0, Sum).
  
  
  roddsum([], Sum, Sum) :- !.
  roddsum([_], Sum, Sum) :- !.
  roddsum([_, Elem | Tail], Sum, Res) :- NewSum = Sum + Elem, roddsum(Tail, NewSum, Res).
  oddsum(List, Sum) :- roddsum(List, 0, Sum).
  
  
  listbigger([], _, []) :- !.
  listbigger([Elem | Tail], Big, [Elem | ResTail]) :- Elem > Big, listbigger(Tail, Big, ResTail), !.
  listbigger([_ | Tail], Big, ResTail) :- listbigger(Tail, Big, ResTail).
  
  
  delone([], _, []) :- !.
  delone([Elem | Tail], Elem, Tail) :- !.
  delone([Elem | Tail], Num, [Elem | ResTail]) :- delone(Tail, Num, ResTail).
  
  
  delall([], _, []) :- !.
  delall([Elem | Tail], Elem, ResTail) :- delall(Tail, Elem, ResTail), !.
  delall([Elem | Tail], Num, [Elem | ResTail]) :- delall(Tail, Num, ResTail).
  
  join([], [], []) :- !.
  join([], [Elem | Tail], [Elem | ResTail]) :- join(Tail, [], ResTail), !.
  join([Elem | Tail], List, [Elem | ResTail]) :- join(Tail, List, ResTail).