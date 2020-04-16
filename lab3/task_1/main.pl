:- initialization main, halt.

% Inital facts
:- assert(больше("ананаса", "папайя")).
:- assert(больше("папайя", "персик")).
:- assert(больше("персик", "слива")).

% Predicates
меньше(X, Y) :- больше(Y, X).

есть_ли_меньше(X) :- больше(X, _).
есть_ли_больше(X) :- меньше(X, _).

наименьший(X) :- меньше(X, _), \+ есть_ли_меньше(X).
наибольший(X) :- больше(X, _), \+ есть_ли_больше(X).

% Functions
print_all_facts :-
  writeln("Доступные факты:"),
  forall(
    больше(X, Y),
    writef("%t > %t\n", [X, Y])
  ).

main :-
  print_all_facts,
  repeat,
  writeln("Добавить факт?? (\"да\" - добавить факт, либой другой символ - провести анализ)"),
  read_line_to_string(user_input, Answer),
  ( Answer = "да"
    ->
    writeln("объект больше:"),
    read_line_to_string(user_input, BiggerItem),
    writeln("объект меньше:"),
    read_line_to_string(user_input, SmallerItem),
    assert(больше(BiggerItem, SmallerItem)),
    fail
    ;
    findall(X, наименьший(X), Xs), writef("Наименьший объект %t.\n", [Xs]),
    findall(Y, наибольший(Y), Ys), writef("Наибольший объект %t.\n", [Ys])
  ).
