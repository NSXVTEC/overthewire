# LEVEL 7
# OBJECTIVE: retreive the password from a file named data.txt that is next to the word "millionth"

# COMMANDS
# find / -name data.txt 2>/dev/null
# cd /home/bandit_
# grep "millionth" data.txt

# ALTERNATE METHOD (more efficient)
# find / -type f -name data.txt -exec grep -H "millionth" {} + 2>/dev/null

# NOTES
# the system has several files named data.txt, each containing massive amounts of words with lots of passwords
# how to search for a needle in a haystack??

# find + exec command:
# --> searches the whole system [/] specifies the name [-name data.txt]
# execute a secondary action/command on every data.txt file found [-exec grep -H {} +]

# grep --> "Global Regular Expression Print" command that searches for specific text patterns
# -H --> tells the grep command to also include the filename for each match

