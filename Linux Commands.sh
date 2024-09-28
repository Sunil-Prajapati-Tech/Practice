cd
cd /
cd ~
cd path
cd ..
cd -

agar home directory me hai to direct folder name de sakte hai lekin agar koi aur folder open karna hai joki home directory me nahi hai to / lagana padta hai

ls
ls Document
ls -r
ls -a
ls -ra
ls -l
ls -la
ls Do.*
ls /
ls ~
ls /> filesystem.txt
ls -ltr

touch test.txt
touch 1.txt 2.txt 3.txt 4.txt


mkdir test-dir
mkdir test-dir-2 -v
mkdir one two three four five -v
mkdir Documents/six
mkdir -p Documents/seven/eight/ten


head (by default top 10 lines)
head -n 5 example.txt
head -5 test1.txt
head test1.txt test2.txt
head -n 5 test1.txt test2.txt


tail (by default bottom 10 lines)
tail -n 5 example.txt
tail -5 test1.txt
tail test1.txt test2.txt
tail -n 5 test1.txt test2.txt
tail -f test2.txt



cat
cat >
cat >>


cp 1.txt 2.txt
cp 1.txt /home/sunil/2.txt
cp i 1.txt /home/sunil/2.txt
cp 1.txt 2.txt copiedfiles

while coping if file is not exist then new file will get created but not directories.
cp -r copiedfiles new_copiedfiles   ---for dirctories


mv wil mv we can rename the files as well

mv file1.txt file2.txt
mv file1.txt /home/sunil/ 
mv file1.txt /home/sunil/file2.txt 
mv -i file1.txt /home/sunil/file2.txt
mv movefiles mfiles  ---we can rename the directories as well
mv mfiles test/

rm 1.txt
rm 1.txt 2.txt 3.txt 4.txt
rm -i 1.txt
rm -I 1.txt 2.txt 3.txt 4.txt (prompt for more than 3 files)
rm -Iv 1.txt 2.txt 3.txt 4.txt
rm -r a1
rm -rv a1
rm -rvi a1
rm -d test (deleting the empty directory)
rm -dv test
rm -rf test (delete all the files inside the directory)

ps - meaning process status
ps -e
ps -a
ps -e | more
ps -ef
ps -ef | more
ps aux
ps aux | more
ps -ef | grep httpd
ps -ef | grep java
ps -ef | python
ps -u root
ps -u paul
ps -G 
ps -ejH
ps -ejH | grep httpd
ps -l pidi

done--systemctl status httpd
systemctl status ssh
systemctl start ssh
systemctl restart ssh


netstat - meaning network statistics (utility)
netstat -putan | grep "port|IP"
netstat -putan | grep :22
netstat | more
netstat -a | more
tcp protocol
netstat -at | more
udp protocol
netstat -au | more
udp6 protocol
netstat -au6 | more
tcp protocol
netstat -atl | more
tcp protocol numerial
netstat -atln | more
tcp protocol numerial with pid&program
netstat -atlnp | more

netstat -r
netstat -i
netstat -s

ifconfig

ssh - secure shell | defaul port listen on "22"

ssh username@hostname
ssh username@ipaddress

file /etc/ssh/sshd_config

nohup process &    ----nohup.out ---logging or output
nohup process > /dev/null2>&1 &


jobs
bg
fg
bg %1
fg %2


nice (priotity from -20 to 19)

nice -n -10 /home/paul/echo.sh

kill -9 PID

df -h
df -h -BG
df -h -BK

du -h
du -h /home/sunil/tutorial/archive/
du -ah /home/sunil/tutorial/archive/
du -ahc /home/sunil/tutorial/archive/

free -h
free -h -s3
free -h -c4



done--du
done--df
done--free
done--clear
done--cd
done--ls -lrt | tail
done--cp -r
done--rm -rf
done--mkdir
done--tail -f
done--head -f
done--ps -ef | grep -i "process name"
done--netstat -apeen | grep -i "port number"
done--ssh
done--nohup (temporary script run)
done--jobs
done--bg
done--fg
done--nice


awk options 'selection criteria' {action} input_file

0$ - name of the command
0$ - in awk it will print all the line

awk -F "|" '/DBA/ {print $0}' emp_ns.txt
awk -F "|" '/DBA/ {print $1 $2 $3 $4}' emp_ns.txt
awk -F "|" '/[cC]hou[wu]dhary/ {print $1 $2 $3 $4}' emp_ns.txt
awk -F "|" 'NR==3,NR==6 {print NR,$1,$2,$3,$4}' emp_ns.txt
awk -F "|" 'NR==3,NR==6 {print NR,$1,$2,$3,$4 > sample.txt}' emp_ns.txt
awk -F "|" $3 == "DBA" || $3 == "Manager" {print $1 $2 $3 $4}' emp_ns.txt
awk -F "|" $3 ~ "DBA" || $3 ~ "Manager" {print $1 $2 $3 $4}' emp_ns.txt
awk -F "|" '$2 ~ /[cC]hou[wu]dhary/ {print $0}' emp_ns.txt
awk -F "|" '$5 > 5000 && $4 ~ "Technology" {print $0,$5*0.25,$5*0.5}' emp_ns.txt
awk -F "|" '$5 > 5000 && $4 == "Technology" {print $0,$5*0.25,$5*0.5}' emp_ns.txt
--------------------------------------------------------------------------------------------------------------------
calling awk subprogram
cat > emp.awk
$5 > 5000 && $4 == "Technology" {print $0,$5*0.25,$5*0.5}
awk -F "|" -f emp.awk emp_ns.txt
--------------------------------------------------------------------------------------------------------------------
awk -F "|" '$5 > 5000 && $4 == "Technology" {count++; print count,$1,$2,$3}' emp_ns.txt
awk -F "|" 'NR!5 {print "line No ", NR, " has ",NF, " column" }' emp_ns.txt
--------------------------------------------------------------------------------------------------------------------
awk using BEGIN and END

awk -F "|" 'BEGIN {variable declartion} {processing} END {execution}' emp_ns.txt

awk -F "|" 'BEGIN {count=0} {count++;} END {print "Total no of lines: " , count;}' emp_ns.txt









sed -i "s/abc/def/g" "filename
vim ( gg, g, dd, p)

grep -- global search for regular expression and print
!grep -- to run the latest grep command
grep -i "unix" file1.txt
grep "^[0-9].*" file1.txt
grep -w "unix" file1.txt
grep -B "unix" file1.txt
grep -A "unix" file1.txt
grep -C "unix" file1.txt
grep -r "unix" *
grep -v "error" 
grep -v "^$" file1.txt
grep "^$" file1.txt
grep -c "^$" file1.txt  -- count of search pattern
grep -l "error" * 2>/dev/null  ----this will redirected to null.txt
grep -L "error" * 2>/dev/null  ----this will redirected to null.txt
grep -n "error" file1.txt
grep "^Add" file1.txt
grep "end$" file1.txt
grep -e "unix" -e "Add" file1.txt
grep -H "line" file?.txt  ---with filename
grep -q "line" file1.txt  ---this wont show anything but we can check echo $? if pattern found then 0 else 1
grep -s "line" file1.txt  ---this will suppress the error message
grep -x "end" file1.txt ---for searching entire line
grep "[pP]" file1.txt













scp "filename"@"hostname with path"
sftp

done--echo $?  ---status of last command


done--chmod -- change mode
r--read,w--write,x--execute

file owner,group,others (everyone else)

symbolic (text),numeric (octal),reference

+ to grant permission, - to revoke permission, = set new permission

chmod a+x file1.txt
chmod a-x file1.txt
chmod u=rwx,g=rw,o=r file1.txt (u-current user, g-group, o-others, a-all)


0 - no permission
1 - execute
2 - write
3 - 1 + 2 (execute + write)
4 - read
5 - 1 + 4 (execute + read)
6 - 2 + 4 (write + read)
7 - 1 + 2 + 4 (execute + write + read)

chmod 77 file1.txt 
--> this will grant read, write and execute permission to group and other
--> it will considered as 077


done--chown   --- change owner
chown -c nick file1.txt
chown nick:nick file1.txt  --this will change both owner and group

done--chgrp	--- change in group
chgrp -c nick file1.txt

getent group  -- to check users under group

done--id--to see the details of user
id sunil



done--wc  --->word count
wc  filename
wc -l filename
wc -c filename
wc -w filename



done--diff - ibcw file1 file2   (i - allow case sensible, b - between files in context form, c - for ignoring case, w - ignoring white space)
diff first.txt second.txt
diff -c first.txt second.txt
diff -s first.txt second.txt  ---
diff -u first.txt second.txt  ---
which colordiff
colordiff first.txt second.txt
colordiff -c first.txt second.txt
colordiff -s first.txt second.txt  ---
colordiff -u first.txt second.txt  ---



done--sleep 3   ---> by default it is sec
sleep 10s ---> seconds
sleep 10m ---> minutes
sleep 10h ---> hours
sleep 10d ---> days

done--cal --->calender
cal august 2021

done--ping - meaning packet internet groper
ping www.google.com
ping 198.0.0.0
ping -c 5 www.google.com ---> for sending on 5 packets
ping -i 2 www.google.com ---> for changing the interval
ping -c 5 -q www.google.com ---> for sending on 5 packets and will get on summary
ping -f www.google.com ---> to send packets as fast as possible to test the network performance
ping -s 500 www.google.com  ---> change size of packet
ping -D www.google.com ---> with timestamp
ping -w 10 www.google.com  ---> stop printing after 10 sec
ping -a 10 www.google.com ---> audible
ping localhost