#!/usr/bin/expect

set procname "ssh_login"

set host [lindex $argv 0]
set usr [lindex $argv 1]
set passwd [lindex $argv 2]

set serverhost "192.168.250.23"

spawn  ssh -o PubkeyAuthentication=no $usr@$host 

expect {
	-timeout 30
	-re "yes" {send "yes\n";exp_continue}
	-re "password" {send "$passwd\n"}
	-re "#' { send "echo 'welcome'\n"}
}

expect "root@*#"
send "apt-get install --reinstall salt-minion -y\n"
expect "root@*#"
send "sed -i 's/^#master: salt/master: $serverhost/g' /etc/salt/minion \n"
expect "root@*#"
send "service salt-minion restart \n"
