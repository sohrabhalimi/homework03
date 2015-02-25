% Valid crossword words
word('Lisp', l, i, s, p).
word('Java', j, a, v, a).
word('ALGOL', a, l, g, o, l).
word('COBOL', c, o, b, o, l).
word('Pascal', p, a, s, c, a, l).
word('Prolog', p, r, o, l, o, g).
word('Clojure', c, l, o, j, u, r, e).
word('Fortran', f, o, r, t, r, a, n).
word('JavaScript', j, a, v, a, s, c, r, i, p, t).
word('Smalltalk', s, m, a, l, l, t, a, l, k).

% Step 1
%
% create a rule for fourLetterWord/1 here.  This means that it will be a rule
% that takes a single argument with the functor called 'fourLetterWord'.
% Remember that you can use '_' to unify with anything and not keep the
% instantiated value.



% The following test is enabled and will fail until you have defined a valid
% fourLetterWord/1 rule
:- begin_tests(fourLetterWords).

test(fourLetterWord) :-
  setof(X, fourLetterWord(X), Xs),
  Xs == ['Java', 'Lisp'].

:- end_tests(fourLetterWords).


% Step 2
%
% Create a rule for endsWithOL/1 here.  This rule will check to see if a
% five-character word ends with the letters o and l.


:- begin_tests(endsWithOL, [blocked('step 2')]).

test(endsWithOL) :-
  setof(X, endsWithOL(X), Xs),
  Xs = ['ALGOL', 'COBOL'].

:- end_tests(endsWithOL).


% Step 3
%
% Now, create crossword/10, a rule that will solve the crossword puzzle from the readme.
%


:- begin_tests(crossword, [blocked('step 3')]).

test(crossword) :-
  crossword('Lisp', 'COBOL', 'Pascal', 'ALGOL', 'JavaScript', 'Prolog', 'Fortran', 'Clojure', 'Smalltalk', 'Java').

:- end_tests(crossword).

% vim:set ft=prolog:
