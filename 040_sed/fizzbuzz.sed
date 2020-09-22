# This is a comment.

#Usage: seq 100 | sed --file=040_sed.sed

#a
/.*[05]$/s//Buzz/

#b
n

#c
s//Buzz/

#d
n

#e
s//Buzz/

#f
s/^[1-9]*/Fizz/

#-------------------------------------#

### How does this script work? ###

#First note these facts.
#- `seq 100` outputs integers from 1 to 100. Each line contains one integer.
#- `n` in `sed` means "skip this line".

#Then here's the processing flow.
#Each section corresponds to each iteration.
#Each line is of the form "<original line content>: <process to be done> (<code to invoke the process>)".
#
# 1: Skipped (#b).
# 2: Skipped (#d).
# 3: Fizz (#f).
#
# 4: Skipped (#b).
# 5: Buzz (#c) and Skipped (#d).
# 6: Fizz (#f).
#
# 7: Skipped (#b).
# 8: Skipped (#d).
# 9: Fizz (#f).
#
#10: Buzz (#a) and Skipped (#b).
#11: Skiped (#d).
#12: Fizz (#f).
#
#13: Skipped (#a).
#14: Skipped (#d).
#15: Buzz (#e) and Fizz (#f).

#-------------------------------------#

