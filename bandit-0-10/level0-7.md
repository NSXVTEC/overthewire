# OverTheWire: Bandit Levels 0 → 7 Technical Log

This document records the foundational phase of my Linux navigation journey. It highlights transitions from standard brute-force navigation to highly targeted searches using Linux stream manipulation, piping, and file property filters.

---

## 🎯 Level 0 → Level 1: Core Navigation
* **Objective:** Retrieve the password stored in a file named `readme` located in the home directory.
* **The First Solution:**
  ```bash
  ls
  cat readme
  ```
* **The Efficient Evolution:** Instead of running two separate commands, utilizing tab-completion or chaining inputs minimizes interactive context-switching.
  ```bash
  cat ~/readme
  ```

---

## 🎯 Level 1 → Level 2: Handling Special Characters
* **Objective:** Open a file named `-` located in the home directory.
* **The First Solution:** Typing `cat -` failed because the shell interprets `-` as an indicator for standard input (stdin).
* **The Efficient Evolution:** Specify the explicit relative path using `./` to force the shell to treat the symbol as a literal file name rather than an option flag.
  ```bash
  cat ./-
  ```

---

## 🎯 Level 2 → Level 3: Spaces in Filenames
* **Objective:** Read a file named `spaces in this filename` in the home directory.
* **The First Solution (Manual Escape):** Manually typing backslashes before every space character.
  ```bash
  cat spaces\ in\ this\ filename
  ```
* **The Efficient Evolution:** Wrapping strings in literal quotes or relying completely on shell tab-completion to auto-escape whitespace characters saves active development time.
  ```bash
  cat "spaces in this filename"
  # Or: type 'cat spa' and press [TAB]
  ```

---

## 🎯 Level 3 → Level 4: Uncovering Hidden Assets
* **Objective:** Retrieve a password hidden in a concealed directory called `inhere`.
* **The First Solution:** Running `ls` returned an empty directory layout.
* **The Efficient Evolution:** Use the `-a` (all) flag with `ls` to display hidden files (dotfiles), combining it with `-l` to verify file attributes instantly.
  ```bash
  cd inhere
  ls -la
  cat .hiddenfile
  ```

---

## 🎯 Level 4 → Level 5: Examining Human-Readable Data
* **Objective:** Isolate the only human-readable text file within a directory containing multiple binary files.
* **The First Solution:** Linearly running `cat` on every file (`file00`, `file01`, etc.) until plain text appears on screen.
* **The Efficient Evolution:** Leverage the `file` utility alongside wildcards to inspect file metadata headers and systematically determine data types before printing them to standard output.
  ```bash
  file ./*
  # Look for the output explicitly stating "ASCII text"
  cat ./-file07
  ```

---

## 🎯 Level 5 → Level 6: Multi-Constraint Targeted Searching
* **Objective:** Find a file hidden across nested directories matching specific properties: human-readable, 1033 bytes in size, and not executable.
* **The First Solution:** Manually tracking and checking individual subdirectories using `ls` and `file`.
* **The Efficient Evolution:** Leverage advanced features of the `find` engine by combining explicit flags for type, size, and execution permissions. This reduces a multi-step search down to an instant O(1) developer operation.
  ```bash
  find . -type f -size 1033c ! -executable
  # Output path is instantly discovered
  cat ./maybehere07/.file2
  ```

---

## 🎯 Level 6 → Level 7: System-Wide Property Filters
* **Objective:** Locate a file owned by user `bandit7`, group `bandit6`, and exactly 33 bytes in size somewhere on the server.
* **The First Solution:** Searching local directories or generating massive recursive loops.
* **The Efficient Evolution:** Target the root directory `/` with explicit user and group criteria, while redirecting diagnostic permission warnings (`Permission denied`) to the null device (`/dev/null`) to maintain a clean console screen.
  ```bash
  find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
  ```
* **Engineering Insight:** Redirection of stderr (`2>`) is a crucial mechanism for isolating high-value logging data from system noise.

---

## 🎯 Level 7 → Level 8: Stream Filtering
* **Objective:** Extract a password stored next to the word "millionth" inside a massive raw file named `data.txt`.
* **The First Solution:** Running `cat data.txt` or trying to read the text stream inside a regular text viewer.
* **The Efficient Evolution:** Pipe the massive file stream directly into standard evaluation tools using regular expression filters.
  ```bash
  grep "millionth" data.txt
  ```
* **Engineering Insight:** Piping (`|`) keeps high-volume operations completely in-memory, bypassing slow disk-write processes.
