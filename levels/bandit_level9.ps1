# LEVEL 9
# OBJECTIVE: The password for the next level is stored in the file data.txt containing binary data
# the password has several '=' signs in front of it

# COMMANDS
# strings -a data.txt | grep "="

# NOTES
# strings
# --> command that extracts and displays human-readable text from binary, compiled, or non-text files

# grep
# --> command that search for specific text in files.
#     processes text line-by-line and prints every line that matches your specified criteria

# Pipes |
# | is referred to as a pipe --  it connects commands
# takes the standard output of the lhs and redirects it to the standard input of the rhs
