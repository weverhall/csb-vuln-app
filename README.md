# csb-vuln-app

Deliberately vulnerable app for Cyber Security Base course (OWASP 2021).

## Installing

### Linux (Debian-based)

Install Python, pip, and SQLite:
```bash
sudo apt update && sudo apt install -y python3 python3-pip sqlite3
```

Initialize the database:
```bash
sqlite3 rides.db < init_db.sql
```

Create and enter a virtual environment:
```bash
python3 -m venv venv && source venv/bin/activate
```

Install required dependencies:
```bash
pip install -r requirements.txt
```

Get environment variables from .env-file:
```bash
export $(cat .env | xargs)
```

Run the application:
```bash
flask run
```

### macOS

Install Homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Python and SQLite (pip should be included in Python install):
```bash
brew update && brew install python sqlite
```

Rest of the steps are the same as they are for Linux.

### Windows

[Install Python (pip should be included)](https://www.python.org/downloads/windows/)

Add Python to PATH.

[Install SQLite](https://www.sqlite.org/download.html)

[Install Git Bash](https://git-scm.com/downloads/win)

Using Git Bash, rest of the steps are the same as they are for Linux.
