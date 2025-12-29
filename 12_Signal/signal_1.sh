#!/bin/bash

/*
✅ Lesson 15 — Signals & Script Control (CTRL+C, trap)

In real systems, scripts do not always run to completion.

They can be:

interrupted by users (CTRL+C)

killed by the system

stopped during shutdown

terminated by cron timeouts

A good Bash script handles interruptions gracefully.

🧠 What Is a Signal?

A signal is a message sent to a process telling it something happened.

Common signals:

Signal	MEANING
SIGINT	Interrupt (CTRL+C)
SIGTERM	Termination request
SIGKILL	Force kill (cannot be trapped)
EXIT	Script exit (normal or abnormal)


in terminal write sleep n : n is any number

*/

