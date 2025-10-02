# 📝 Notes from Bandit Wargame

These are my personal notes while going through the **OverTheWire Bandit** challenges.  
I’ve tried to keep them short, practical, and easy to understand — so that anyone visiting this repo can also learn from them.

---

## 🔑 General Tips
- Always read the **Level Goal** carefully before starting.
- Keep a local file with **passwords** and **commands used** (this helps a lot when you come back later).
- Use `man <command>` to read the manual and understand command options.
- Try solving a level first by yourself — but if you get stuck, break down the problem step by step.

---

## 📂 File Handling
- `ls` → list files in current directory  
- `ls -a` → list all files (including hidden)  
- `cat <file>` → show file contents  
- `file <file>` → identify file type  
- `du -h` → show file size (human readable)  
- `find . -name <filename>` → search for files  

---

## 🔗 Navigation
- `pwd` → print working directory  
- `cd <dir>` → change directory  
- `cd ..` → move one step back  
- `cd /` → go to root  

---

## 🔐 Permissions
- `chmod` → change file permissions  
- `ls -l` → check file permissions and ownership  
- `sudo` → run as superuser (not always available here, but important concept)  

---

## 🌐 Networking
- `ssh banditX@bandit.labs.overthewire.org -p 2220` → connect to level X  
- `nc <host> <port>` → open TCP/UDP connection  
- `telnet <host> <port>` → connect to a remote host  

---

## ⚙️ Useful Tricks
- `strings <file>` → extract readable text from binary files  
- `grep <pattern> <file>` → search for text inside files  
- `sort`, `uniq` → sort text and remove duplicates  
- `diff <file1> <file2>` → compare differences  
- Piping (`|`) → pass output of one command into another  
  - Example: `cat data.txt | grep "password"`  

---

## 💡 Personal Takeaways
- Many levels look harder than they really are — usually it’s just about using the right tool.
- Don’t try to memorize everything. Instead, remember *what tool can solve what type of problem*.
- The best way to get comfortable is by practicing, not just reading.

---

✍️ Feel free to suggest improvements if you spot anything missing!
