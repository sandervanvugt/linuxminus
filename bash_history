ls -l /etc/hosts
ln /etc/hosts myhosts
ls -il /etc/hosts myhosts 
echo hello >> myhosts 
ls -il /etc/hosts myhosts 
ln -s /etc/hosts symhosts
ls -il /etc/hosts myhosts symhosts
rm /etc/hosts
cat myhosts 
cat symhosts 
ln myhosts /etc/hosts
ln mydir /etc
ln /etc mydir
ln /boot/vmlinuz-3.10.0-957.el7.x86_64 kernel
find -size +1G
find / -size +1G
find / -size +1G 2>/dev/null
find / -size +200M -exec ls -l {} \; 2>/dev/null
df -h
cd /
ls
ls -l
tar cvf /mytar.tar /etc/ /home
ls -l mytar.tar 
tar czvf /mytar.tgz /etc/ /home
ls -l mytar*
tar cjvf /mytar.bz2 /etc/ /home
ls -l mytar*
tar xvf mytar.tgz -C /tmp
ls /tmp
ls
file mytar.tgz
cd
vim countdown
chmod +x countdown 
./countdown 12
ls -l /etc/passwd
cat /etc/passwd
ls -l /etc/shadow
tail -n 1 /etc/shadow
useradd linda
passwd linda
cd /home/linda
ls
touch rootfile
su - linda
groupadd sales
usermod -aG sales linda
su - linda
history
cd
ip addr show
ifconfig
ip addr add ens33 10.0.0.10/24
ip a
ip addr add dev ens33 10.0.0.10/24
ip a
ping 10.0.0.10
ifconfig
man ifconfig
ip -s link
ifconfig
rm -f $(which ifconfig)
systemctl -t help
systemctl list-units -t target
systemctl list-unit-files -t target
systemctl start printer.target
systemctl status printer.target
systemctl isolate emergency.target
systemctl isolate reboot.target
systemctl cat sshd.service
./countdown 12
history
mkdir -p /data/sales
mkdir -p /data/account
groupadd sales
groupadd account
useradd lori -G account
useradd laura -G account
useradd lisa -G sales
cd /data
ls
ls -l
chgrp sales sales
chgrp account account
ls -l
chmod 770 *
ls -l
su - linda
cd
cd /home/linda
vim playme
chmod +x playme 
su - linda
chmod u+s playme 
ls -l
find / -perm /4000 2>/dev/null
ls -l /usr/bin/passwd
ls -l /etc/shadow
history
su - laura
cd /data
ls -l
chmod g+s *
ls -l
su - laura
cd account/
touch root1`
touch root1
ls -l
id
history
cd /data
ls
history
su - lori
chmod +t *
ls -l
su - lori
cd /home
ls -l
chmod +t *
cd linda
touch root
ls -l
cd ..
su - linda
history
cd /data
ls -l
getfacl account/
ls *
setfacl -R -m g:sales:rx /data/sales
getfacl sales/
setfacl -x g:sales:rx /data/sales
setfacl -x g:sales /data/sales
getfacl /data/sales
setfacl -x g:sales:rx /data/account
setfacl -R -m g:sales:rx /data/account
getfacl account/
getfacl account/laura2 
setfacl -x g:sales /data/account
setfacl -R -m g:sales:rX /data/account
getfacl account/
getfacl account/laura2 
setfacl -R -x g:sales /data/account
getfacl account/laura2 
setfacl -R -m g:sales:rX /data/account
getfacl account/laura2 
history
getfacl *
cd account/
su - linda
su - lori
cd ..
setfacl -m d:g:sales:rx /data/sales
setfacl -m d:g:sales:rx /data/account
getfacl account/
su - lori
history
cd
./countdown 20
poweroff
lsblk
fdisk /dev/sdb
lslbk
lsblk
mkfs.ext4 /dev/sdb1
mkdir /files
vim /etc/fstab
yum install -y quota
mount -a
mount
quotacheck -mavug
cd /files
ls -a
ls -l
quotaon -a
edquota -u lisa
su - lisa
ls -ld .
chmod 777 .
su - lisa
fdisk /dev/sdb
xxd -l 512 /dev/sdb
lsblk
cat /proc/partitions 
partprobe
lsblk
mkfs.xfs /dev/sdb2
mkdir /quota
vim /etc/fstab
mount -a
mount
echo 11:/quota >> /etc/projects
echo testquota:11 >> /etc/projid
xfs_quota -x -c 'project -s testquota' 
xfs_quota -x -c "print" /quota
xfs_quota -x -c "report -pbih"  /quota
xfs_quota -x -c 'limit -p bsoft=100m bhard=200m testquota' /quota
xfs_quota -x -c "report -pbih"  /quota
dd if=/dev/zero of=/quota/bigfile bs=1M count=300
xfs_quota -x -c "report -pbih"  /quota
lscpu
lsusb
lspci
lspci -k
lsmod
lsblk
man abrtd
cd /boot
ls
ls -l
dracut
udevadm monitor
cd /sys
ls
cd
modinfo e1000
lsmod | grep minix
modprobe minix
modprobe vfat
modprobe -r vfat
lsmod | head
depmod 
yum install -y git
git clone https://github.com/sandervanvugt/luth
cd luth/
ls
cp 50-custom.rules /etc/udev/rules.d/
vim 50-custom.rules 
ls /dev/usb
ls -l /dev/usb/sde
cat 50-custom.rules 
grep CUSTOMUDEV /var/log/messages
udevadm info --name=/dev/sde | less
history
cd
./countdown 12
cat countdown 
lsblk
gdisk /dev/sdc
mkfs.ext4 -L myfiles /dev/sdc1
e2label --help
man e2label
vim /etc/fstab
mount -a
mkdir /myfiles
mount -a
mount
cd /dev/disk/
ls
ls by-label/
ls by-label/ -l
vim /etc/fstab
blkid
gdisk -l /dev/sdc
mkswap /dev/sdc2
vim /etc/fstab
free -m
swapon -a
free -m
history
fdisk /dev/sdb
partprobe
pvcreate /dev/sdc3
xxd /dev/sdc | less
vgcreate vgdata /dev/sdc3
vgs
lvcreate -L 1G -n lvdata vgdata
lvcreate -l 255 -n lvdata vgdata
lvs
mkfs.xfs /dev/vgdata/lvdata
vim /etc/fstab
mkdir /mylvm
mount -a
mount
ls -l /dev/vgdata/lvdata /dev/mapper/vgdata-lvdata 
history
cd
fdisk /dev/sdb
partprobe
fdisk /dev/sdd
mdadm --create /dev/md0 --level=1 --raid-disks=2 /dev/sdb4 /dev/sdd1
mkfs.ext4 /dev/md0
mdadmin --detail --scan 
mdadm --detail --scan 
mdadm --detail --scan >> /etc/mdadm.conf
mkdir /raid
vim /etc/fstab
mount -a
cat /proc/mdstat 
mdadm --detail /dev/md0
man lvcreate
history
systemctl status systemd-journald
journalctl 
systemctl isolate reboot.target
journalctl
vim /etc/systemd/journald.conf 
mkdir /var/log/journal
reboot
vim /etc/rsyslog.conf 
systemctl restart rsyslog
logger hello
tail /var/log/everything 
ls /etc/systemd/
ls /var/log/journal/
cd /var/log/journal/
cd bc282e6e438f481698ab27b7a6599b3e/
ls
ls -l
cd
vim /etc/logrotate.d/chrony 
vim /etc/logrotate.conf 
ssh user@192.168.1.200
ssh user@192.168.1.201
./countdown 12
vim /etc/dracut.conf
dracut --help
dracut
vim /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
vim /boot/grub2/grub.cfg 
cd /etc/grub.d/
ls
cd ..
reboot
systemctl list-units
systemctl isolate default.target
cd /etc/systemd/system/
ls
ls -l default.target
systemctl list-unit-files -t target
systemctl cat multi-user.target 
cd /usr/lib/systemd/system
grep AllowIsolate *
grep AllowIsolate -- *
grep AllowIsolate -- * 2>/dev/null
loginctl --help
loginctl list-sessions
loginctl list-usders
loginctl list-users
pwd
ls
systemctl cat sshd.service
systemctl edit sshd.service
systemctl cat sshd.service
systemctl restart sshd
systemctl status sshd
kill -9 9594
systemctl status sshd
systemctl show sshd.service
cd
yum install -y httpd
yum install -y vsftp
yum install -y vsftpd
cd /usr/lib/systemd/system
grep Requires -- *
systemctl cat vmtoolsd.service
systemctl edit httpd.service
ps aux | grep vsf
ps aux | grep htt
systemctl start httpd
ps aux | grep vsf
kill -9 9878
ps aux | grep htt
ps aux | grep vsf
cd
tar cvf myback.tar /etc/ /home
ls -l
tar tvf myback.tar 
tar xvf myback.tar 
ls
rm -rf etc home
tar xvf myback.tar -C /home/linda
ls /home/linda
cp /etc/passwd ./passwd.txt
md5sum passwd.txt > passwd.md5
md5sum passwd.txt
md5sum passwd.md5
md5sum /etc/passwd
useradd bob
cp /etc/passwd passwd.txt
md5sum -c passwd.md5 
history
./countdown 12
history
less /etc/services 
ss -tunap
man netstat
netstat -tulpen
systemctl stop firewalld
yum search iptables
yum install iptables-services iptables-utils
iptables -L -n
curl https://rhatcert.com
curl http://rhatcert.com
curl https://rhatcert.com/
curl http://nu.nl
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -L
curl https://rhatcert.com/
less /etc/services
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
iptables -L
curl https://rhatcert.com/
iptables -A INPUT -m state --state=ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
curl https://rhatcert.com/
curl http://rhatcert.com/
history
ping localhost
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
ping localhost
history
ls /etc/sysconfig/iptables
cat /etc/sysconfig/iptables
iptables-save 
iptables-save > /etc/sysconfig/iptables
systemctl enable --now iptables
history
reboot
vim /etc/systemd/system.conf 
grub2-setpassword 
vim /boot/grub2/grub.cfg 
man grub2-setpassword
vim /etc/ssh/sshd_config 
vim /etc/fstab
mount | grep sdb1
mount -o remount /files
mount | grep sdb1
cd /files
vim runme
chmod +x runme 
./runme
less /var/log/audit/audit.log 
man auditctl
auditctl -w /etc/ -p wa
useradd bob
useradd bob2
tail /var/log/audit/audit.log 
grep AVC /var/log/audit/audit.log 
vim /etc/issue
vim /etc/motd 
chvt 3
cd
./countdown 20
ls
cp countdown countdown.svv
vim countdown
diff countdown countdown.svv
cd /etc
ls
rpm -qf /etc/passwd
cd
yumdownloader setup
rpm2cpio setup-2.8.71-10.el7.noarch.rpm | cpio -idmv
ls
cd etc
ls
cat passwd 
cd
history
systemctl status ctrl-alt-del.target
systemctl mask ctrl-alt-del.target
systemctl daemon-reload
vim /etc/inittab 
mount | grep sdb4
fdisk /dev/sdb4
fdisk /dev/sdb
file /dev/sdc
file --help
file -s /dev/sdc
file -s /dev/sdd
lsblk
gdisk /dev/sdd
fdisk /dev/sdd
partprobe
lsblk
cryptsetup luksFormat /dev/sdd5
cryptsetup luksOpen /dev/sdd5
cryptsetup luksOpen /dev/sdd5 secret
ls /dev/mapper/
mkfs.ext2 /dev/mapper/secret 
man 5 crypttab
vim /etc/crypttab
vim /etc/fstab
mkdir /secret
reboot
chvt 1
