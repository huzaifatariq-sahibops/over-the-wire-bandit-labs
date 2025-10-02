# OverTheWire Bandit Labs 🕹

This repository documents my journey through the [OverTheWire Bandit Wargame](https://overthewire.org/wargames/bandit/).  
Bandit is an entry-level set of Linux security challenges that teaches practical system and security skills.

---

## 📌 What's inside?
- *NOTES.md* → Commands, tricks, and problem-solving steps I learned while completing the levels.  
- *NEW_TOPICS.md* → A curated list of new Linux / Networking / Security topics I discovered.  
- *scripts/* → Small bash scripts I wrote during the labs (examples).  
- *passwords/* → *Symmetrically-encrypted* password files for my personal archival use (NOT plaintext).

---

## 🚀 Key learnings & tools
Practical hands-on use of common Linux and security tools:
ssh, nc, find, grep, strings, base64, xxd, tar, gzip, bzip2, openssl, git, nmap, and more.
Bash scripting and basic network interaction/automation techniques.

---

## 🔐 Password files
This repo does *not* contain plaintext solutions or passwords.  
Password files (if present) are encrypted with a passphrase and stored under passwords/.  
*Do not attempt to use these to bypass the Bandit wargame* — they are for my personal archival record only.

To decrypt a file locally:
bash
openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -in level-01.enc -out level-01 -pass pass:"YOUR_PASSPHRASE"


---

## 📣 Disclaimer

I respect OverTheWire's rules — no spoilers or plaintext passwords are published here. This repository is a learning journal and a showcase of the techniques I practiced.

README generated automatically.
