:- initialization tickets(Tickets), writef("Результат: %t \n", [Tickets]), halt.

tickets(Tickets) :-
	length(Tickets, 3),
	member(ticket(ивановы, _, _), Tickets),
	member(ticket(петровы, _, _), Tickets),
	member(ticket(васечкины, _, _), Tickets),
	member(ticket(_, turkey, _), Tickets),
	member(ticket(_, italy, _), Tickets),
	member(ticket(_, spain, _), Tickets),
	member(ticket(_, _, 2000), Tickets),
	member(ticket(_, _, 3000), Tickets),
	member(ticket(_, _, 5000), Tickets),
	not(member(ticket(ивановы, turkey, _), Tickets)),
	not(member(ticket(петровы, italy, _), Tickets)),
	not(member(ticket(_, turkey, 5000), Tickets)),
	member(ticket(_, italy, 3000), Tickets),
	not(member(ticket(петровы, _, 2000), Tickets)).
