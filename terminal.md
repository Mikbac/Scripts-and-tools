# Basic Linux commands

* ls - file list
* ls - long file list
* cd <file_name> - change directory

* mkdir <directory_name> - make directory
* touch <file_name> - create file

* rm <file_name> - remove file
* rm -rf <directory_name> - remove directory (-rf <- recursive force)

* cat <file_name> - create, view, concatenate file
* less <file_name> - view file (q - quit)

* wc <flag> <file_name> - word counter (flags: -c <- bytes; -m <- chars; -l <- lines; ...)

* clear - clear console (or ctrl + l)

* find <attribute> <template> - find (attributes: -name, -iname) (templates e.g.: '*green*')

* mv <source_file_name> <destiny> - move file

* echo <string> - display line of text/string

* chmod <reference><operator><mode> file - change mod (references: u, g, o, a  ), (operators: +, -, =), (permissions: r, w, x)   

* gzip <options> <file_name> - compresses a file
* gunzip <options> <file_name> - expand a file

* tar <options> <file_name_testiny_-f> <file_name> - create Archive and extract the Archive files (options: -c <- create; -z <- gzip; -p <- permissions; -f <- save file)

* grep <string> <file_name> - search string in file

* man <command_name> - manual
* <command_name> --help - short manual

# Examples:

* find -name '*green*' | wc -l 
```40```

* find -name '*green*' > ../list.txt

* chmod +x file.sh

* tar -czpf ../newFileName ./ <- compresses a files

* tar -ztf ./fileName <- check/test file

* tar -zxf ./fileName <- extract files

* grep ^W ./fileName <- search words begins with W

* grep -E '^W.+n$' ./fileName <- search words with regex

* ls | grep green <- list files with green

* ls | grep -v green <- list files without green

* ls | grep -vic green <- count files without green or GrEEn or...

* cat fileName*.txt | grep '^Y' | sort <- filtr and sort 
* cat fileName*.txt | grep '^Y' | sort -r <- filtr and reverse sort 