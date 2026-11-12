# LEVEL 8
# OBJECTIVE: find the password in a file named data.txt and is the only line of text that appears once

# if you type the command "cat data.txt", you'll see this is a huge file with lots of passwords
# but which one is the correct one?


# COMMANDS
# sort data.txt | uniq -u

# NOTES
# sort
# --> command that reorders and arranges the lines of a text file
#     by default, it sorts alphabetically
#     -n (numerical order) -r (reverse/descending order) -u (unique, removes duplicate lines)

# uniq
# --> command that filters out and/or reports repeated lines in a file
#     only compares adjacent lines!
#     -u (outputs only the lines that occur once)

# use sort and uniq together to put all same lines together, then output the unique line
