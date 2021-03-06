:- initialization туры(Тур),
                  writef("Результат: %t \n", [Тур]),
                  halt.

туры(Тур) :-
	length(Тур, 3),
	member(тур(ивановы, _, _), Тур),
	member(тур(петровы, _, _), Тур),
	member(тур(васечкины, _, _), Тур),
	member(тур(_, турция, _), Тур),
	member(тур(_, италия, _), Тур),
	member(тур(_, испания, _), Тур),
	member(тур(_, _, 2000), Тур),
	member(тур(_, _, 3000), Тур),
	member(тур(_, _, 5000), Тур),
	not(member(тур(ивановы, турция, _), Тур)),
	not(member(тур(петровы, италия, _), Тур)),
	not(member(тур(_, турция, 5000), Тур)),
	member(тур(_, италия, 3000), Тур),
	not(member(тур(петровы, _, 2000), Тур)).
