observer: andytill/erlyberly

observer: :runtime_tools (add in applications)

change the name of the node

iex --sname observer@localhost --cookie ... --hidden -e ":observer.start"

epmd -names

ssh port forwarding local EPMD port -> remote EPMD port

blog: tracing and observing your remote node

SASL:

iex --logger-sasl-reports true -S mix

or add it to applications: [:sasl, ...]

Good talks:

Profiling and debugging erlang systems
debugging complex systems
stuff goes bad, erlang in anger

basics + stdlib

78% elixir
22% erlang

if, def, |>  -> metaprogramming -> code generation

metaprogramming -> programming

code against data
the program is data
good macros are invisible


expression? quoted elixir code

abstract syntax tree

quote sort like string
unquote inject value in quote
