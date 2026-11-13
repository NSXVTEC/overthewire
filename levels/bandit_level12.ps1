# LEVEL 12
# OBJECTIVE: retrieve the password from a file named data.txt, which has been repeatedly compressed

# NOTES

# COMMANDS     extensions
# xxd -r         .bin
# bzip2 -d       .bz2
# gzip -d        .gz
# tar -xf        .tar

# to decompress a file or extract files from a tar bundle,
# it is necessary to change the file name to the required file extension
# example: mv data.txt data.gz

# it is helpfult to make a copy of data.txt in another directory (tmp), and work on it there
# mkdir data_folder
# cd /home/bandit12
#cp data.txt /tmp/data_folder

# file
# --> command that tells you how the file was compressed
# (may return gzip, bzip2, or tell you it is a tar bundle)

# DECOMPRESSING 
# decompressing a hexdump file into a binary file
# xxd -r data.txt > data.bin

# decompressing a file compressed by gzip
# mv data.bin data.gz
# gzip -d data.gz

# decompressing a file compressed by bzip2
# mv data.bin data.bz2
# bzip2 -d data.bz2

# extract files from a tar archive (a bundle of files)
# mv data.bin data.tar
# tar -xf data.tar
# (you will find a new file appears in the directory after this)
