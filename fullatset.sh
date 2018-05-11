#!/bin/bash
#for i in  5 100 
#do
#	expect << EOF
#	set timeout -1
#	spawn ssh root@192.168.4.$i
#	expect "~]#"		{ send "wget -O ./at_setup_nginx.sh ftp://192.168.4.254/at_setup_nginx4.sh\r"}
#	expect "~]#"		{ send "chmod +x ./at_setup_nginx.sh\r"}
#	expect "~]#"		{ send "./at_setup_nginx.sh\r" }
#	expect "服务已启动"	{ send "exit\r"}
#	expect "~]#"		{ send "exit\r"}
#EOF
#done

for i in  100 200 
do
	expect << EOF
	set timeout -1
	spawn ssh root@192.168.2.$i
	expect "~]#"		{ send "wget -O ./at_setup_nginx.sh ftp://192.168.2.254/at_setup_nginx2.sh\r"}
	expect "~]#"		{ send "chmod +x ./at_setup_nginx.sh\r"}
	expect "~]#"		{ send "./at_setup_nginx.sh\r" }
	expect "~]#"		{ send "exit\r"}
EOF
done
