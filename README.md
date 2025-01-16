

---

# Password Generator Script

## Overview
This script generates secure, random passwords using the OpenSSL `rand` command. The user can specify how many passwords they want to generate and the desired length of each password (from 1 to 64 characters).

## Features
- **Customizable Password Quantity:** You can specify how many passwords to generate.
- **Customizable Password Length:** You can specify the length of each generated password, between 1 and 64 characters.
- **Secure Password Generation:** The script uses `openssl rand` to generate cryptographically secure random passwords, encoded in Base64 format.

## Prerequisites
- **Bash Shell**: This script requires a Unix-like shell (Linux, macOS, WSL on Windows).
- **OpenSSL**: The script relies on OpenSSL to generate secure random passwords. OpenSSL must be installed on your system.

To install OpenSSL (if not already installed):
- On Ubuntu/Debian: `sudo apt-get install openssl`
- On macOS: OpenSSL is pre-installed.

## How to Use

1. Clone or download the script to your local machine.
2. Open a terminal.
3. Navigate to the directory containing the script.
4. Make the script executable (if it's not already):
   ```bash
   chmod +x password_generator.sh
   ```
5. Run the script:
   ```bash
   ./password_generator.sh
   ```
6. Follow the prompts to specify:
   - The number of passwords you want to generate.
   - The length of each password (between 1 and 64 characters).

## Example Run

```bash
.....password generator.....

Please select how many passwords you want: 
3
Select the length of the password (1-64): 
12

...Generating passwords...

Password 1: Zk2j1Bz9
Password 2: S7tKnX3A
Password 3: M8vXlT2Q
```

## Script Details

The script generates passwords with the following steps:
1. **User Input:**
   - The user is prompted to input how many passwords they want (`PASS_QTY`).
   - The user is also prompted to input the desired length of the passwords (`PASS_LENGTH`).
2. **Password Generation:**
   - For each password requested, OpenSSL generates a 48-byte Base64-encoded string.
   - The script then trims the Base64 string to the desired length using `cut -c1-$PASS_LENGTH`.
3. **Output:**
   - Each generated password is printed with a numbered label (e.g., `Password 1`, `Password 2`, etc.).

## Notes
- The script uses OpenSSL’s random number generator, which provides cryptographically secure random values.
- Base64 encoding is used to make the random data readable as text.
- The password length cannot exceed 64 characters (due to Base64 encoding size).
  
---

Feel free to adjust or enhance the file as needed based on your personal or project requirements!
