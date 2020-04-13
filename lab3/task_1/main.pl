:- initialization main, halt.

% Inital facts
:- assert(bigger("дуриан", "папайя")).
:- assert(bigger("папайя", "авокадо")).
:- assert(bigger("авокадо", "слива")).
:- assert(bigger("слива", "вишня")).

% Predicates
bigger/2 :- !.
smaller(X, Y) :- bigger(Y, X).

has_smaller(X) :- bigger(X, _).
has_bigger(X) :- smaller(X, _).

smallest(X) :- smaller(X, _), \+ has_smaller(X).
biggest(X) :- bigger(X, _), \+ has_bigger(X).

% Functions
print_all_facts :-
  writeln("All facts:"),
  forall(
    bigger(X, Y),
    writef("%t > %t\n", [X, Y])
  ).

main :-
  print_all_facts,
  repeat,
  writeln("Добавить факт?? (\"да\" - добавить факт, либой другой символ - провести анализ)"),
  read_line_to_string(user_input, Answer),
  ( Answer = "да"
    ->
    writeln("больше:"),
    read_line_to_string(user_input, BiggerItem),
    writeln("меньше:"),
    read_line_to_string(user_input, SmallerItem),
    assert(bigger(BiggerItem, SmallerItem)),
    fail
    ;
    findall(X, smallest(X), Xs), writef("Наименьший фрукт %t.\n", [Xs]),
    findall(Y, biggest(Y), Ys), writef("Наибольший фрукт %t.\n", [Ys])
  ).
