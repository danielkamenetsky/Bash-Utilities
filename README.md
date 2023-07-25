# Bash-Utilities

This repository contains a collection of utility scripts written in Bash. Each of these scripts is designed to perform a specific task.

## Scripts

### subdirfiles.sh
This script checks for the existence of specified files in every subdirectory. If files are missing, it outputs the name of the subdirectory to standard error. Run it with `./subdirfiles.sh [file1] [file2] ... [fileN]`.

### selectionsort.sh
This script sorts an array of integers using selection sort. Input the integers as command-line arguments like so: `./selectionsort.sh [int1] [int2] ... [intN]`.

### commentparser.sh
This script removes all comments (lines or parts of lines beginning with a '#') from the specified file. To use it, run `./commentparser.sh [filename]`.

### pwchecker.sh
This script validates the strength of a password according to certain criteria: it must contain at least one letter, at least one digit, at least one symbol, and it must be at least 8 characters long with no whitespace. Run it with `./pwchecker.sh [password]`.

## Dependencies

- Bash 4.0 or higher

## Examples

Here are some examples of how to use these scripts:

1. **subdirfiles.sh**:
    ```bash
    ./subdirfiles.sh file1.txt file2.txt
    ```

2. **selectionsort.sh**:
    ```bash
    ./selectionsort.sh 5 2 9 1 7
    ```

3. **commentparser.sh**:
    ```bash
    ./commentparser.sh input.sh
    ```

4. **pwchecker.sh**:
    ```bash
    ./pwchecker.sh Passw0rd!
    ```

## Contributing
If you find any bugs, or if you have any suggestions or contributions, please feel free to open an issue or a pull request.

## License
This project is licensed under the terms of MIT license.
