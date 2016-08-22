-module(accumulate).

-export([accumulate/2]).

accumulate(Fn,List) ->
    map(Fn,List,[]).

map(_Fn,[],Acc) ->
    rev(Acc);
map(Fn,[H|T],Acc) ->
    map(Fn,T,[Fn(H)|Acc]).

rev(List) ->
    rev(List,[]).

rev([],Acc) ->
    Acc;
rev([H|T],Acc) ->
    rev(T,[H|Acc]).
