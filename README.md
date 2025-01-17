Password Generator Script
Overview

This Bash script generates secure random passwords using OpenSSL. If OpenSSL is not installed, the script provides installation instructions based on the operating system.
Features

    Generates a user-defined number of passwords with a custom length (1–64 characters).
    Detects if OpenSSL is installed.
    Provides installation instructions for OpenSSL if missing.

Usage

    Save the script to a file, e.g., password_generator.sh.
    Make the script executable:

chmod +x password_generator.sh

Run the script:

    ./password_generator.sh

Steps in the Script

    Check OpenSSL Installation:
        If OpenSSL is installed, the script proceeds.
        If not, it provides instructions to install OpenSSL for:
            Windows (using Chocolatey),
            Linux (using apt),
            macOS (using Homebrew).

    Generate Passwords:
        The user specifies:
            Number of passwords.
            Length of each password.
        The script generates passwords using:

        openssl rand -base64 48 | cut -c1-$PASS_LENGTH

Example Run
OpenSSL Installed:

.....password generator.....
Please select how many passwords you want:
2
Select the length of the password (1-64):
12

...Generating passwords...

Password 1: aG3$kPz9xN@#
Password 2: B2J&c!Xv4Ty&

OpenSSL Not Installed:

openssl not found
Do you want to install openssl
[y/n]
y
choose your os
1. windows
2. Linux
3. Macos
2
run: sudo apt install openssl -y

Notes

    Ensure your package manager (apt, brew, or choco) is configured correctly if OpenSSL needs to be installed.
    Requires an active internet connection for installation.
