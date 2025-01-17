# Password Generator Script

## Overview
This Bash script generates secure, random passwords using OpenSSL. It allows users to define the number and length of passwords they need. If OpenSSL is not installed, the script provides platform-specific installation instructions.

---

## Features
- Generate multiple passwords with user-defined length (1–64 characters).
- Automatically checks for OpenSSL installation.
- Offers installation guidance for:
  - **Windows** (via Chocolatey),
  - **Linux** (via APT package manager),
  - **macOS** (via Homebrew).

---

## How to Use
### 1. Prerequisites
- A Bash-compatible shell.
- OpenSSL installed (optional but required for password generation).

### 2. Steps to Run
1. Save the script as `password_generator.sh`.
2. Make it executable:
   ```bash
   chmod +x password_generator.sh
   ```
3. Run the script:
   ```bash
   ./password_generator.sh
   ```

---

## Functionality
### 1. OpenSSL Check
- The script verifies if OpenSSL is installed using:
  ```bash
  which openssl
  ```
- If not installed, it prompts the user to install OpenSSL and provides commands for:
  - **Windows:** `choco install openssl`  
  - **Linux:** `sudo apt install openssl -y`  
  - **macOS:** `brew install openssl`

### 2. Password Generation
- Users are prompted to:
  - Enter the number of passwords to generate.
  - Specify the desired length of each password (1–64 characters).
- Passwords are generated using OpenSSL’s `rand` command:
  ```bash
  openssl rand -base64 48 | cut -c1-$PASS_LENGTH
  ```

---

## Example Usage
### Case 1: OpenSSL Installed
```bash
.....password generator.....
Please select how many passwords you want:
3
Select the length of the password (1-64):
16

...Generating passwords...

Password 1: aB4$xY8#kZm&2Lp@
Password 2: cT3&gP9!fXr*7Zn$
Password 3: hL5!dV7#qJt&9Bm%
```

### Case 2: OpenSSL Not Installed
```bash
openssl not found
Do you want to install openssl
[y/n]
y
Choose your OS:
1. Windows
2. Linux
3. macOS
2
run: sudo apt install openssl -y
```

---

## Notes
- **Password Length:** The maximum length of each password is capped at 64 characters.
- **Internet Connection:** Required if OpenSSL installation is necessary.
- **System Permissions:** Installation may require administrative privileges.

