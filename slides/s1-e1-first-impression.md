% The Hitchhikers' Guide to Elixir<br/>First Impression
% Tyr Chen
% Jan 6th, 2017

## What is Elixir? {.slide}

> Elixir is a dynamic, functional language designed for building scalable and maintainable applications.
>
> Elixir leverages the Erlang VM, known for running low-latency, distributed and fault-tolerant systems,
while also being successfully used in web development and the embedded software domain.

## Installation {.slide}

OSX

```bash
$ brew install elixir
```
Ubuntu

```
$ wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
$ sudo apt-get update
```

Windows: [download](https://repo.hex.pm/elixir-websetup.exe)(but, are you serious?)

## Get your hands wet {.slide}

```bash
$ mix new first_impression
* creating README.md
...
* creating test/first_impression_test.exs

Your Mix project was created successfully.
You can use "mix" to compile it, test it, and more:

    cd first_impression 
    mix test

Run "mix help" for more commands.
```

## iex {.slide}

```
$ iex -S mix
Erlang/OTP 19 [erts-8.2] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Compiling 1 file (.ex)
Generated first_impression app
Interactive Elixir (1.4.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> h()
```
Congratulations! Now you entered a shell for a whole new OS - erlang VM!


## Basic concepts {.slide}

* erlang VM
* Pattern matching
* Macros and metaprogramming
* process, port, node

## Observer {.slide}

![](images/s1/observer.jpg)
