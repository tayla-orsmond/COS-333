elementAt(0, [], _).
elementAt(1,[E],E).
elementAt(1, [E|_],E).
elementAt(I, [_ | T], E) :- member(E, T), elementAt(Ind, T, E), I is Ind + 1.

member(Element, [Element | _]).
member(Element, [_ | Lis]) :- member(Element, Lis).
