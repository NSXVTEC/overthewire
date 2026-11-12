# LEVEL 1
# Objective: Open a file named '-' located in the home directory.

# COMMANDS
# initial attempt
# cat -
# Note: Fails because '-' is interpreted as an instruction to read from stdin

# SOLUTION
# cat ./-
# --> ./ represents the path to the file named -

# ALTERNATIVE METHODS
# cat < -
