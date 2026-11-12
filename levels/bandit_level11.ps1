# LEVEL 11
# OBJECTIVE: find the password in a file named data.txt. all upper and lower case have been shifted 13 positions

# NOTES
# cat command sends the readable text of a file to the stdout
# --> does not edit the actual file!
# you will find you do not have authorization to edit the file data.txt
# BUT you can run a pipe (|) of the output of cat into another command

# tr --> command that can shift the characters in a text file
# examples
# shift all lower case 3 characters:
# tr 'a-z' 'd-za-c' < data.txt
# shift it back to original
# tr 'd-za-c' 'a-z' < data.txt
# shift all upper and lower case 5 positions (you can also write the output to the input of a new file)
# tr 'A-Za-z' 'F-ZA-Ef-za-e' < data.txt > newfile.txt

# INITIAL TRY
# cat data.txt
# tr 'N-ZA-Mn-za-m' 'A-Za-z' < data.txt
# --> returns 'permission denied'

# COMMANDS
# cat data.txt | tr 'N-ZA-Mn-za-m' 'A-Za-z'
# --> the cat command's stout is piped to tr's stdin
