Linux administrators spend a huge amount of time working with text:

log files

config files

command output

reports

In this lesson, you’ll learn three essential text tools:

grep → search

awk → extract fields

sed → modify text

We will keep this introductory and safe — no complex one-liners yet.

🧠 1. grep — Search Text

Think of grep as:

“Find lines that contain this pattern”


#!/bin/bash

echo "this line has the word error";
echo "this line is without error";
echo "e";
echo "error"
exit 0

in terminal: grep "word to find" filename

