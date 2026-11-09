# LEVEL 4
# OBJECTIVE: The password for the next level is stored in the only human-readable file in the inhere directory.

# NOTES
# "human-readable" is referring to a regular text file.
# a binary file is non-human-readable --> a type of file containing 1's and 0's that machines read
# !! alert !! applying the cat command on a binary file results in an error

# COMMANDS
# ls
# cd inhere
# ls
# cat ./-file00
# cat ./-file01
# ... (continue)
# cat ./-file07

# ALTERNATE METHOD
# (in the inhere directory)
# find . -type f -exec cat {} + 2>/dev/null

# --> goes through every file in this diretory, searches for file of regular type
# -exec performs a secondary command (cat) on each file found
# !! binary files will output gibberish! look for the normal text output. this is the password for the next level
