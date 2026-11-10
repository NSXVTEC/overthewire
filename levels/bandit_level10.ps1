# LEVEL 10
# OBJECTIVE: The password for the next level is stored in the file data.txt, which contains base64 encoded data

# COMMANDS
# base64 -d data.txt

# NOTES
# base64 
# -->  takes your input data, processes it, and prints the encoded or decoded result directly to the standard output

#      decoding: echo -n "SGVsbG8gV29ybGQ=" | base64 -d 
       output: Hello Linux
       
#      encoding: echo -n "Hello Linux" | base64
#      output: SGVsbG8gTGludXg=

# can also do whole text files rather than just lines:

# base64 filename.txt > encoded_output.txt
# base64 -d encoded_output.txt > original.txt
