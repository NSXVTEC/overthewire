# bandit_level1.ps1
# Objective: Open a file named '-' located in the home directory.

# ? THE BRUTE FORCE APPROACH
# cat -
# Note: Fails because '-' is interpreted as an indicator for standard input.

# ? THE OPTIMAL SOLUTION
# cat ./-

# ?? ALTERNATIVE METHODS
# cat < -
