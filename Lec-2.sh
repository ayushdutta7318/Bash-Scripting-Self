#!bin/bash

# VARIABLES:

# defining variables:
server_name="web-prod-1";
log_directory="/var/log";
backup_threshold=80;

# Using variables:

echo "This my server: $server_name";
echo "This is my log: $log_directory";
echo "This is my backup threshold: $backup_threshold";

# Example of using it in a command

df -h $log_directory;

'''
The curly braces {} are used to explicitly separate the variable name from any surrounding text. While $BACKUP_THRESHOLD% would probably work, ${BACKUP_THRESHOLD}% is unambiguous and is a best practice. It prevents the shell from trying to find a variable called BACKUP_THRESHOLD%.
'''
echo ${server_name};
echo $server_name;

'''
This is crucial. You dont want to hardcode a filename or a hostname inside your script every time you run it. You want to pass it as an argument, just like you do with standard Linux commands (ls /home, grep error /var/log/syslog).
'''

echo "The name of this script is ${0}";
echo "Hello ${1}";
echo "I am ${2}"
echo "We Work in ${3} department";
echo "Total Arguments: $#"

'''
Pass the above arguments as follows while executing:

sh Lec-2.sh Anand Ayush Engineering
'''

echo "Monitoring Disk Health: $(df -h): ${4}";

# -----------------------------------------------------------------------

# USER INPUT:

'''
The Senior Admins Explanation:

read TARGET pauses the script, waits for the user to type something and press Enter, and stores whatever they typed in the variable TARGET.

This is powerful but dangerous. You are directly taking user input and feeding it to a command. A malicious user could type something like /dev/null; rm -rf / (if you were running as root). For now, were just learning the mechanic. Later, we will learn how to sanitize input, which is a critical security practice.
'''

echo "Enter file or diectory:"

read Target;

echo "Checking: $Target";

# See permission as per user input: Permissions
ls -ld ${Target};

# see disk health as per user input

du -sh $Target;

echo "-----------------ASSIGNMENT----------------";

# Q1Enhance the Greeter: Modify greeter.sh to also print a "Welcome Message" that includes the user's current terminal (found in the $TERM environment variable) and the name of their shell (found in $SHELL).

Term=$(ps -p $$ -o comm=);
echo ${Term};

echo "Hi Ayush! Welcome to the terminal ${Term} and the shell ${0}";

echo "Enter the directory path";
read PATH;

