# LEVEL 6
# OBJECTIVE: find a password somewhere in the server contained in a file.
# file is owned by user bandit7, owned by group bandit6, and 33 bytes in size

# COMMANDS
# find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
# cat /var/lib/dpkg/info/bandit7.password

# NOTES
# use pwd to find out where you are in the path
# find / --> searches the whole system
# cat /absolute/path --> says "go to this address then cat the contents of this file"
