:- initialization main, halt.

% Inital facts
walked_away(колобок, дед).
walked_away(колобок, баба).
walked_away(колобок, заяц).
walked_away(колобок, волк).
walked_away(колобок, медведь).
not_walked_away(колобок, лиса).

main :-
  walked_away(A, волк), writef("%t ушёл от волка.\n", [A]),
  walked_away(C, дед), walked_away(C, баба), writef("%t ушёл от деда, и от бабы.\n", [C]),
  not_walked_away(B, лиса), writef("%t не ушёл от лисы.\n", [B]),

  findall(X, walked_away(колобок, X), Xs),
  findall(Y, not_walked_away(колобок, Y), Ys),
  findall(Z, not_walked_away(Z, лиса), Zs),

  append(Zs, Xs, Ws),
  append(Ws, Ys, All),

  writef("все персонажи сказки: %t.", [All]).
