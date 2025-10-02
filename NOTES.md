OverTheWire Bandit Wargames Lessons
===================================

[https://overthewire.org/wargames/bandit](https://overthewire.org/wargames/bandit)

1- Get SSH like this:-
ssh username@host -p port


ssh bandit1@bandit.labs.overthewire.org -p 2220
sshpass -p $(cat passwd_file) ssh bandit1@bandit.labs.overthewire.org -p 2220


2- If a file is named or starts with "-" annd you want to CAT it, use "cat ./-"

3- If a file has spaces & dashes in it like this "spaces in this filename", "--spaces in this filename--" you have to read it like this:-


cat spaces\ in\ this\ filename
cat ./--spaces\ in\ this\ filename--


4- for i in $(ls); do file ./$i; done

5- 	human-readable
1033 bytes in size
not executable


	find -readable -size 1033c -not -executable


6-	owned by user bandit7
owned by group bandit6
33 bytes in size


	find / -user bandit7 -group bandit6 -size 33c 2>/dev/null


7- cat data.txt | grep "millionth"

8- The password for the next level is stored in the file data.txt and is the only line of text that occurs only once


cat data.txt | sort | uniq -c
cat data.txt | sort | uniq -u
cat data.txt | sort | uniq -c | grep -v 10


9- The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several '=' characters.


strings data.txt | grep "="


10- The password for the next level is stored in the file data.txt, which contains base64 encoded data.


base64 -d data.txt


11- The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed.


xxd -r data.txt > hexdump
file hexdump
mv hexdump hexdump.gz
mv hexdump hexdump.bz2
tar -xvf data6


12-	ssh bandit14@localhost -p 2220 -i sshkey.private

-i identity_file
Selects a file from which the identity (private key) for public key authentication is
read.  You can also specify a public key file to use the corresponding private key that is
loaded in ssh-agent(1) when the private key file is not present locally.  The default is
~/.ssh/id_rsa, ~/.ssh/id_ecdsa, ~/.ssh/id_ecdsa_sk, ~/.ssh/id_ed25519,
~/.ssh/id_ed25519_sk and ~/.ssh/id_dsa.  Identity files may also be specified on a per-
host basis in the configuration file.  It is possible to have multiple -i options (and
multiple identities specified in configuration files).  If no certificates have been ex‐
plicitly specified by the CertificateFile directive, ssh will also try to load certificate
information from the filename obtained by appending -cert.pub to identity filenames.

Public key authentication works as follows: The scheme is based on public-key cryptography, using
cryptosystems where encryption and decryption are done using separate keys, and it is unfeasible
to derive the decryption key from the encryption key.  The idea is that each user creates a pub‐
lic/private key pair for authentication purposes.  The server knows the public key, and only the
user knows the private key.  ssh implements public key authentication protocol automatically, us‐
ing one of the DSA, ECDSA, Ed25519 or RSA algorithms.  The HISTORY section of ssl(8) (on non-Open‐
BSD systems, see [http://www.openbsd.org/cgi-bin/man.cgi?query=ssl&sektion=8#HISTORY](http://www.openbsd.org/cgi-bin/man.cgi?query=ssl&sektion=8#HISTORY)) contains a
brief discussion of the DSA and RSA algorithms.


 The file ~/.ssh/authorized_keys lists the public keys that are permitted for logging in.  When the
 user logs in, the ssh program tells the server which key pair it would like to use for authentica‐
 tion.  The client proves that it has access to the private key and the server checks that the cor‐
 responding public key is authorized to accept the account.


The user creates their key pair by running ssh-keygen(1).  This stores the private key in
~/.ssh/id_dsa (DSA), ~/.ssh/id_ecdsa (ECDSA), ~/.ssh/id_ecdsa_sk (authenticator-hosted ECDSA),
~/.ssh/id_ed25519 (Ed25519), ~/.ssh/id_ed25519_sk (authenticator-hosted Ed25519), or ~/.ssh/id_rsa
(RSA) and stores the public key in ~/.ssh/id_dsa.pub (DSA), ~/.ssh/id_ecdsa.pub (ECDSA),
~/.ssh/id_ecdsa_sk.pub (authenticator-hosted ECDSA), ~/.ssh/id_ed25519.pub (Ed25519),
~/.ssh/id_ed25519_sk.pub (authenticator-hosted Ed25519), or ~/.ssh/id_rsa.pub (RSA) in the user's
home directory.  The user should then copy the public key to ~/.ssh/authorized_keys in their home
directory on the remote machine.  The authorized_keys file corresponds to the conventional
~/.rhosts file, and has one key per line, though the lines can be very long.  After this, the user
can log in without giving the password.

FILES
~/.rhosts
This file is used for host-based authentication (see above).  On some machines this file
may need to be world-readable if the user's home directory is on an NFS partition, because
sshd(8) reads it as root.  Additionally, this file must be owned by the user, and must not
have write permissions for anyone else.  The recommended permission for most machines is
read/write for the user, and not accessible by others.


 ~/.shosts
         This file is used in exactly the same way as .rhosts, but allows host-based authentication
         without permitting login with rlogin/rsh.

 ~/.ssh/
         This directory is the default location for all user-specific configuration and authentica‐
         tion information.  There is no general requirement to keep the entire contents of this di‐
         rectory secret, but the recommended permissions are read/write/execute for the user, and
         not accessible by others.

 ~/.ssh/authorized_keys
         Lists the public keys (DSA, ECDSA, Ed25519, RSA) that can be used for logging in as this
         user.  The format of this file is described in the sshd(8) manual page.  This file is not
         highly sensitive, but the recommended permissions are read/write for the user, and not ac‐
         cessible by others.

 ~/.ssh/config
         This is the per-user configuration file.  Because of the potential for abuse, this file must have
         strict permissions: read/write for the user, and not writable by others.

