%%%-------------------------------------------------------------------
%%% @copyright (C) 2010-2013, 2600Hz
%%% @doc
%%%
%%% @end
%%% @contributors
%%%   SIPLABS, LLC (Maksim Krzhemenevskiy)
%%%-------------------------------------------------------------------
-module(frontier_app).

-behaviour(application).

-include_lib("whistle/include/wh_types.hrl").

-export([start/2, stop/1]).

%%--------------------------------------------------------------------
%% @public
%% @doc
%% Implement the application start behaviour
%% @end
%%--------------------------------------------------------------------
-spec start(any(), any()) ->
                   {'ok', pid()} |
                   {'error', startlink_err()}.
start(_Type, _Args) -> frontier:start_link().

%%--------------------------------------------------------------------
%% @public
%% @doc
%% Implement the application stop behaviour
%% @end
%%--------------------------------------------------------------------
-spec stop(any()) -> 'ok'.
stop(_State) -> frontier:stop().
