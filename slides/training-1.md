Functional programming (pure)

concurrent model:

* threading (multi processing) - lock
* future (promise) - async (OS - thread blocking)
* CSP (communicating sequential processes) -
* Actor

pid -        pid
pid -  pid - pid
pid -        pid

goroutine                    goroutine
goroutine -----||||||| ---   goroutine
               channel
* Immutable:
a = 1 (bind, pattern match)
a = 2 (OK, old a GC, new a = 2)
a++

* Recursion

def main_body(state) do
  receive do
    msg1 ->
      new_state = do_stuff(msg1, state)
      main_body(new_state)
    msg2 ->
      do_other_stuff(state)
      main_body(state)
  end
end


* fun first class citizen (javascript)

process

stack / heap - 1-4k  16G = 4M

process -===================+ mailbox (limit)

-- url -> http request

pid1 -> pid2 (5M binary): VM heap
cross node

receive msg -> do stuff -> send msg

cluster -

how to find process? <location>

- pid <0.147.0>
- name (global): atom
- Registry

N processes (worker) - Supervisor (process)

Worker (process web requests, 10) - Supervisor - Supervisor --- Error kernel
Server (accept requests)-----------|
                                               |
other servers ---------------------------------|

Supervision tree / isolation

Supervision tree -> Application (systemd service - start / stop / restart)
N Applications -> Project

Logger -> Application : Logger.info("asdfasdf")\
\




doc first class citizen

@doc"""
## this is the doc

* a
* b
* c

   iex> hello("world")
   "hello world"
"""
def hello(msg) do
  "hello world"
end

defmodule L do
  def get_list([h|t]) do
    IO.puts(h)
    get_list(t)
  end

  def get_list([]) do
    IO.puts("done!")
  end

  def match(1, platform) do

  end

  def match(id, platform) do
  end

  match(2, "android")
end

push / pop ()



defmodule Tesla do
  def main(state) do
    receive do
      {:hello, pid} ->
        send pid, "hello world"
        main(state)
      {_, pid}      ->
        send pid, "don't understand"
        main(state)
    end
  end
end


send {:put, k, v} -> store
send {:get, k} -> send v

defmodule KV do
  def loop(state) when is_map(state) do
    receive do
      {:put, k, v, _pid} ->
        new_state = store(state, k, v)
        loop(new_state)
      {:get, k, pid} ->
        v = get(state, k)
        send pid, v
        loop(state)
    end
  end

  defp store(state, k, v) do
    Map.put state, k, v
  end

  defp get(state, k) do
    Map.get state, k
  end
end
