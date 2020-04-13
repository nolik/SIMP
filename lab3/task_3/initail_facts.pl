:- dynamic travel_to/2, order/2.

family(ивановы).
family(петровы).
family(васечкины).

amount(2000).
amount(3000).
amount(5000).

country(turkey).
country(italy).
country(spain).

not(travel_to(ивановы, turkey)).
not(travel_to(петровы, italy)).
not(order(петровы, 2000)).
travel_to(F1, turkey) :- not(order(F1, 5000)).
travel_to(F2, italy) :- order(F2, 3000).

entry(F, C, A) :- family(F), country(C), amount(A), travel_to(F, C), order(F, A).
