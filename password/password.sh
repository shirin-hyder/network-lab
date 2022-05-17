#!/bin/bash
echo "Enter your password"
read password
len="${#password}"
if test $len -ge 8 ; then
	echo "$password" | grep -q [0-9]
	if test $? -eq 0; then
		echo "$password" | grep -q [A-Z]
        if test $? -eq 0; then
		echo "$password" | grep -q [a-z]
        if test $? -eq 0; then
		echo "Strong Password"
	else
		echo "WEAK PASSWORD -> should include a lower case letter."
	fi
else
	echo "WEAK PASSWORD -> should include a Capital case letter."
        fi
else
	echo "WEAK PASSWORD -> should use numbers in your password."
        fi
else
	echo "WEAK PASSWORD -> length should have at least 8 characters."
        fi



