stratx
startx 
sudo pacman -S xorg-twm 
su
sudo pacman -S xorg-twm 
startx
ls
ls -la
rm .Xauthority 
startx
reboot
stratx
startx 
sudo pacman -S xorg-twm 
su
sudo pacman -S xorg-twm 
startx
ls
ls -la
rm .Xauthority 
startx
reboot
startx
cat /var/log/Xorg.0.log
cat /var/log/Xorg.0.log | less
lspci
cat /var/log/Xorg.0.log | less
sudo X -configure
man pacman
pacman -R xf86-video-ati 
sudo pacman -R xf86-video-ati 
pacman -S catalyst-dkms 
sudo pacman -S catalyst-dkms 
sudo pacman -R libgl
man pacman
sudo pacman -R libgl
sudo pacman -R libgl > deps
cat deps
sudo pacman -Rc libgl > deps
sudo pacman -Rc libgl
sudo pacman -S catalyst-dkms 
sudo pacman -S mesa qt gnome-sesion
sudo pacman -S mesa qt gnome-session
reboot
startx
sudo X -configure
cat /var/log/Xorg.0.log
sudo pacman -S xf86-video-vesa 
startx
cat .xinitrc 
pacman -S gnome gnome-extras
sudo pacman -S gnome gnome-extras
sudo pacman -S gnome gnome-extra
sudo systemctl enable gdm.service 
sudo systemctl start gdm.service 
pacman -U Downloads/Builds/awesome-gnome/awesome-gnome-0.0.1-2-any.pkg.tar.xz 
sudo pacman -U Downloads/Builds/awesome-gnome/awesome-gnome-0.0.1-2-any.pkg.tar.xz 
reboot
firefox
mc
find . -iname "*lock*"
firefox
sudo rm .parentlock 
firefox
cat /var/log/Xorg.0.log
sudo pacman -S xf86-video-intel 
sudo pacman -T xf86-video-intel 
man pacman
sudo pacman -Sd xf86-video-intel 
sudo pacman -S intel-dri 
sudo pacman -Sd intel-dri 
reboot
cat /var/log/Xorg.0.log
sudo pacman -R catalyst-dkms catalyst-utils 
sudo pacman -Rd catalyst-dkms catalyst-utils 
sudo pacman -Rc catalyst-dkms catalyst-utils 
sudo pacman -S xf86-video-intel gnome gnome-extras mesa qt 
sudo pacman -S xf86-video-intel gnome gnome-extra mesa qt 
reboot
cat /var/log/Xorg.0.log
sudo pacman -R catalyst-dkms catalyst-utils 
sudo pacman -Rd catalyst-dkms catalyst-utils 
sudo pacman -Rc catalyst-dkms catalyst-utils 
sudo pacman -S xf86-video-intel gnome gnome-extras mesa qt 
sudo pacman -S xf86-video-intel gnome gnome-extra mesa qt 
reboot
cat /var/log/Xorg.0.log
sudo X -configure
cat /var/log/Xorg.0.log
cat /var/log/Xorg.0.log | grep EE
pacman -R xf86-video-vesa 
sudo pacman -R xf86-video-vesa 
pacman -U Downloads/Builds/awesome-gnome/awesome-gnome-0.0.1-2-any.pkg.tar.xz 
sudo pacman -U Downloads/Builds/awesome-gnome/awesome-gnome-0.0.1-2-any.pkg.tar.xz 

cat /var/log/Xorg.0.log | grep EE
cat /var/log/Xorg.0.log
reboot
cat /var/log/Xorg.0.log | grep EE
find . -iname xorg.conf
find /etc -iname xorg.conf
sudo vim /etc/X11/xorg.conf
reboot
exit
liferea
pacman -S liferea pidgin
sudo pacman -S liferea pidgin
liferea
exit
ps ax | grep wall
cat /usr/bin/wallrotater 
vim .config/wallchan/wallchan.conf
sudo vim .config/wallchan/wallchan.conf
./.wallchan.sh 
which grep 
ln -s /bin/grep /usr/bin/grep
sudo ln -s /usr/bin/grep /bin/grep
./.wallchan.sh 
cp .wallchan.sh /usr/bin/wallchan
sudo cp .wallchan.sh /usr/bin/wallchan
mc
firefox
mc
exit
firefox 
exit
exit
mpd
pacman -S gnome-tweak-tool mpd ncmpcpp
sudo pacman -S gnome-tweak-tool mpd ncmpcpp
mpd
ps ax | grep mpd
mpd
mpd /etc/mpd.conf
chown -R wizzardich:admin .mpd/
mpd /etc/mpd.conf
ls .mpd/
ls -la .mpd/
vim /etc/mpd.conf
sudo vim /etc/mpd.conf
exit
ls -la /dev/disk/by-uuid/
ls .mpd/
ls -la .mpd/
cd .mpd/
rm playlists 
mkdir playlists
ls
mpd
sudo systemctl enable mpd.service 
sudo systemctl enable mpdscribble.service 
exit
sudo vim /etc/fstab
sudo pacman -S skype
sudo pacman -S multilib.skype
sudo pacman -S skypex86_64
sudo pacman -S skype.x86_64
sudo pacman -S skype
exit
./.wallchan
./.wallchan.sh 
gnome-control-center 
gnome-tweak-tool 
ps ax | wallrotater
ps ax | grep wallrotater
m
mc
exit
nautilus
exit
cat /var/log/Xorg.0.log | grep EE
cat /var/log/Xorg.0.log | grep intel
pkill X
sudo pkill X
mc
mount.cifs
mc
sudo pacman -S smbclient 
sudo mount.cifs //10.11.1.10/QMultimedia /mnt/ -o ro,user=wizzardich
df -Tah
ncmpcpp
mc
exit
gnome-control-center 
gnome-tweak-tool 
cd Downloads/Archives/
ls
gnome-tweak-tool 
unzip naos___gtk3_by_half_left-d49nfrm.zip 
gnome-tweak-tool
gconf
sudo pacman -S chromium
cd Downloads/
ls
mc
function aa_power_settings () {    sudo bash -c '
    for i in `find /sys/devices -name "bMaxPower"`;
    do
        for ii in `find $i -type f`;
        do
            bd=`dirname $ii`;
            busnum=`cat $bd/busnum`;
            devnum=`cat $bd/devnum`;
            title=`lsusb -s $busnum:$devnum`;
            echo -e "\n\n+++ $title\n  -$bd\n  -$ii";
            for ff in `find $bd/power -type f ! -empty 2>/dev/null`;
            do
                v=`cat $ff 2>/dev/null|tr -d "\n"`;
                [[ ${#v} -gt 0 ]] && echo -e " `basename $ff`=$v";
                v=;
            done | sort -g;
        done;
    done;
    echo -e "\n\n\n+++ Kernel Modules\n";
    for m in `command lspci -k|sed -n "/in use:/s,^.*: ,,p"|sort -u`;
    do
        echo "+ $m";
        systool -v -m $m 2> /dev/null | sed -n "/Parameters:/,/^$/p";
    done
  '; }
aa_power_settings 
exit
rtorrent
mount
umount /mnt
sudo umount /mnt
mc
su
gnome-control-center 
su
wallrotater 
su
cp .bashrc /root/
sudo cp .bashrc /root/
su
cd Downloads/
cd Executables/
ls
cd unico-1.0.
cd unico-1.0.2
ls
make
sudo pacman -S glib2
sudo pacman -S glibc
make
ls /usr/include/glib-2.0/glib/
sudo pacman -S nfs-utils 
ncmpcpp
man showmount
sudo mount.nfs4 192.168.42.73:/media/Stuff /mnt/
ping 192.168.42.73
ping 192.168.42.42
ip addr show
history | grep ip
ip addr add 192.168.42.42/24 dev enp7s0
sudo ip addr add 192.168.42.42/24 dev enp7s0
ping 192.168.42.73
sudo mount.nfs4 192.168.42.73:/media/Stuff /mnt/
ping 192.168.42.73
sudo ip addr add 192.168.42.42/24 dev enp7s0
ping 192.168.42.73
ip addr show
sudo ip addr add 192.168.42.42/24 dev enp7s0 preferred_lft 86400
ip addr show
sudo ip addr add 192.168.42.42/24 dev enp7s0 valid_l
sudo ip addr add 192.168.42.42/24 dev enp7s0 preferred_lft 86400
ip addr show
mc
umount /mnt
sudo umount /mnt
umount /mnt
sudo umount /mnt
exit
nautilus
gnome-control-center 
vim .config/awesome/rc.lua
pacman -S xlockmore
sudo pacman -S xlockmore
sudo pacman -S fortune-mod 
fortune -a
xlock dclock
xlock d-mode clock
xlock -mode dclock
xlock -mode dclock -program fortune
xlock -program fortune
xlock -mode life
xlock -mode dclock -program fortune
xlock +sound -mode dclock -program fortune
xlock +sound -mode marquee -program fortune
cat .config/awesome/rc.lua|less
rtorrent 
pkill X
sudo pkill X
rtorrent 
poweroff
mc
makepkg -s
sudo pacman -U winusb-1.0.10-2-x86_64.pkg.tar.xz 
sudo winusb --help
man winusb
fdisk -l
man mkfs.vfat 
sudo mkfs.vfat -F 32 /dev/sdc
sudo mkfs.vfat -F 32 /dev/sdc1
sudo mount /dev/sdc1 /media/USB/
ls /media/USB/
history | grep loop
mount -o loop /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x64_dvd_915440.iso 
sudo mount -o loop /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x64_dvd_915440.iso 
sudo mount -o loop /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x64_dvd_915440.iso /mnt/
sudo cp /mnt/* /media/USB/
sudo cp -r /mnt/* /media/USB/
mc
sudo umount /media/USB
reboot
sudo umount /media/USB
sudo umount /media/Stuff 
fuser /dev/sda6
sudo umount /media/Stuff 
wallrotater 
sudo umount /media/Stuff 
ps ax
htop
sudo umount /media/Stuff 
mc
who
sudo umount /media/USB
sudo umount /media/Stuff 
df -Tah
sudo umount -f /media/Stuff 
man umount -f /media/Stuff 
man umount -r /media/Stuff 
sudo umrunt -f /media/Stuff 
sudo umount -r /media/Stuff 
sudo umount -f /media/Stuff 
sudo pacman -S iotop
iotop
sudo iotop
sudo umount -f /media/Stuff 
sudo pacman -S lsof 
man lsof 
lsof
lsof | grep Stuff
gdisk -l
gdisk -l /dev/sda
sudo gdisk /dev/sda
reboot 
wallchan 
exit
mc
lspci
lspci | chip
lspci | grep -i chip
cat /proc/cpuinfo | grep -i chip
lspci | grep -i touc
lspci | grep -i pad
lspci | grep -i inp
lsusb
reboot
date 
cat /etc/localtime 
ls -la /etc/localtime 
exit
makepkg -s
pacman -U dropbox-1.6.9-1-x86_64.pkg.tar.xz 
sudo pacman -U dropbox-1.6.9-1-x86_64.pkg.tar.xz 
tar xvf nautilus-dropbox.tar.gz 
makepkg -s
sudo pacman -U nautilus-dropbox-1.4.0-2-x86_64.pkg.tar.xz 
makepkg -s
sudo pacman -U dropbox-cli-1-13-x86_64.pkg.tar.xz 
dropbox start
sudo pacman -S gtk-engine-unico gtk-engine-murrine 
timedatectl 
nautilus
sudo pacman -S ntp 
sudo systemctl enable ntpd.service 
sudo systemctl start ntpd.service 
date
cat /etc/ntp.conf 
ping 0.ppol.ntp.org
ping 0.pool.ntp.org
ntpdate 
ntpd -qg
sudo ntpd -qg
hwclock -w
sudo hwclock -w
hwclock 
sudo ntpd -qg
ntpdate 
sudo ntpd -qg
hwclock -w
sudo hwclock -w
date
exit
sudo pacman -S gtk2
gnome-tweak-tool 
mc
exit
vim /usr/bin/locker
cp /usr/bin/locker ~/
chmod 777 locker
vim locker 
./locker
kill -9 584
kill -9 684
./locker
./locker &
ps ax | grep xauto
vim locker 
kill -9 7620
./locker &
kill -9 7622
./locker &
ps ax | grep xauto
setxkbmap us ; xlock +sound -mode marquee -program fortune
man xautolock 
xautolock -locknow
ps ax | grep xauto
kill -9 7639
vim locker 
xautolock -time 1 -locker "{ setxkbmap us ; xlock +sound -mode marquee -program fortune }"
xautolock -time 1 -locker \"{ setxkbmap us ; xlock +sound -mode marquee -program fortune }\"
echo { setxkbmap us ; xlock +sound -mode marquee -program fortune } > lock
echo "{ setxkbmap us ; xlock +sound -mode marquee -program fortune }" > lock
cat lock
xautolock -time 1 -locker lock
vim lock
./lock
chmod +x lock
./lock
vim lock
./lock
vim lock
./lock
vim lock
./lock
xautolock -time 1 -locker ~/lock
cp lock /usr/bin/sudo 
sudo cp lock /usr/bin/
xautolock -time 1 -locker lock
vim .config/awesome/rc.lua
chmod 111 /usr/bin/lock
sudo chmod 111 /usr/bin/lock
sudo vim /usr/bin/locker
lock
sudo 111 /usr/bin/lock
sudo chmod 111 /usr/bin/lock
lock
sudo chmod 755 /usr/bin/lock
lock
ps ax | grep xau
locker
locker &
ps ax grep xau
ps ax | grep xau
exit
mc
exit
ps ax | grep xautolo
xautolock -locknow
exit
wallchan 
exit
nautilus
wallchan 
poweroff
sudo mount.cifs //10.11.1.10/Public /mnt -o rw,user=wizzardich
sudo mc
rtorrent 
exit
mc
sudo mount.cifs //10.11.1.10/Public -o rw,user=wizzardich
sudo mount.cifs //10.11.1.10/Public /mnt/ -o rw,user=wizzardich
sudo mc
exit
mc
man shuf 
cd Pictures/
ls
cd ../wall/Categories/
ls -a
ls -a ./{Girls,Logos}
ls -a ./{Girls,Logos} -1
ls ./{Girls,Logos} -1
ls ./{Girls,Logos} -1 | shuf -n 1
ls {Girls,Logos} -1 | shuf -n 1
for $dir in *
for dir in *; do echo $dir `ls -1 $dir | wc`; done
ls {Girls,Logos} -1 | shuf -n 1
ls {Girls,Logos} -1
man ls
reboot
ls -1 | wc
ls -1
ls -1 | wc
ls -1 1280x720/
ls -1 1280x720/ | wc
for $dir in *; do
for dir in *; do echo $dir `ls -1 $dir| wc`; done
nautilus
exit
reboot
exit
man ls
man grep
exit
vim .config/wallchan/wallchan.conf
exit
cat wall/Categories/
ls -d wall/Categories/
ls -d wall/Categories/*
wallchan 
date +"%s"
s=$(date +"%s")
if [ s -lt `date +"%s"`; ]; echo 1; endif; ;
if [ s -lt `date +"%s"`; ]; echo 1; fi
if [ s -lt `date +"%s"`; ]; echo 1; fi
if (( s -lt `date +"%s"`; )); echo 1; fi
if (( s -lt `date +"%s"`; )) echo 1; fi
if (( s -lt `date +"%s"`; )); echo 1; fi
if (( s -lt `date +"%s"`; )); echo 1 fi; ;
if (( s -lt `date +"%s"` )); echo 1; fi;
if (( s -lt `date +"%s"` )); then echo 1; fi;
if (( $s -lt `date +"%s"` )); then echo 1; fi;
if (( $s < `date +"%s"` )); then echo 1; fi;
if (( $s > `date +"%s"` )); then echo 1; fi;
if (( $s < `date +"%s"` )); then echo 1; fi;
cat wallchan.sh 
SELECTION="NIGHT"
CURR_HOUR=`date +"%H"`
if (( $CURR_HOUR > 6 )); then    SELECTION="MORNING"; elif (( $CURR_HOUR > 14 )); then    SELECTION="AFTERNOON"; elif (( $CURR_HOUR > 18 )); then    SELECTION="EVENING"; fi
echo $SELECTION
wallchan 
ls wall/Categories/People/
./.wallchan.sh 
./wallchan.sh 
ls /home/wizzardich/wall/Categories/{Misc,Girls}
./wallchan.sh 
which ls
./wallchan.sh 
ls /home/wizzardich/wall/Categories/{Misc,Girls}
./wallchan.sh 
ls /home/wizzardich/wall/Categories/(Misc,Girls)
ls /home/wizzardich/wall/Categories/[Misc,Girls]
ls /home/wizzardich/wall/Categories/[MiscGirls]
ls /home/wizzardich/wall/Categories/{Misc,Girls}
ls /home/wizzardich/wall/Categories/{Misc,Girls,}
ls /home/wizzardich/wall/Categories/{Misc,Girls,} -1
ls /home/wizzardich/wall/Categories/{Misc,Girls,} -1 -R
ls /home/wizzardich/wall/Categories/{Misc,Girls} -1 -R
./wallchan.sh 
/usr/bin/ls /home/wizzardich/wall/Categories/{Misc,Girls} -1 | /bin/grep -E '*.(jpg|jpeg|gif|png)'  | /usr/bin/shuf -n1
./wallchan.sh 
cd wall/Categories/
find {Misc,Girls}
find {Misc,Girls} -type f -print0 | xargs -0 basename 
find {Misc,Girls} -type f -print0 | xargs -I {} -0 basename {}
./wallchan.sh 
cd ~
./wall
./wallchan.sh 
A="A,B,C"
IFS="," C=$A
for i in $C do; echo $i
for i in $C do; echo $i; done
echo $IFS
for i in $C do echo $i; done
for i in $C do echo $i done; ;
for i in $C do; echo $i
echo $C
for i in C do; echo $i
for i in C do echo $i; done
IFS="," C=($A)
for i in "${C[@]}" do echo $i done; ;
for i in "${C[@]}" do echo $i; done; ;
for i in "${C[@]}" do echo $i; done;
for i in "${C[@]}"; do echo $i; done;
for i in $C; do; echo $i
for i in $C; do echo $i; done
for i in "${C[@]}" do echo $i; done; | shuf -n1
for i in "${C[@]}" do echo $i; done | shuf -n1
for i in "${C[@]}"; do echo $i; done | shuf -n1
dirs
IFS="," C=$A
echo $C | shuf -n1
IFS="," C=($A)
echo $C | shuf -n1
./wallchan.sh 
./.wallchan.sh 
./wallchan.sh 
echo $C | shuf -n1
IFS="," C=$A
echo $C | shuf -n1
IFS="," C=($A)
echo $C | shuf -n1
./wallchan.sh 
cp wallchan.sh .wallchan.sh 
sudo cp wallchan.sh .wallchan.sh 
sudo mv wallchan.sh /usr/bin/wallchan 
sudo chmod 555 /usr/bin/wallchan 
wallchan 
exit
vim .config/awesome/rc.lua
sudo vim /usr/bin/wallchan 
cp /usr/bin/wallchan wallchan.sh
vim wallchan.sh 
exit
ls wall/Categories/{Logos, Misc}
ls wall/Categories/{Logos,Misc}
ls wall/Categories/{Logos,Misc} -1
man ls
ls wall/Categories/{Logos,Misc} -1
ls wall/Categories/{Logos,Misc} -1 -d
ls wall/Categories/{Logos,Misc} -1 -b
ls wall/Categories/{Logos,Misc} -1 -f
ls wall/Categories/{Logos,Misc} -1 -b
ls wall/Categories/{Logos,Misc} -1 -D
ls wall/Categories/{Logos,Misc} -1 --file-type
ls wall/Categories/{Logos,Misc} -1 --group-directories-first
ls wall/Categories/{Logos,Misc} -1 -G
ls wall/Categories/{Logos,Misc} -1 -h
ls wall/Categories/{Logos,Misc} -1 -l
ls wall/Categories/{Logos,Misc} -1 -m
ls wall/Categories/{Logos,Misc} -1 -N
ls wall/Categories/{Logos,Misc} -1 -p
ls wall/Categories/{Logos,Misc} -1 -q
ls wall/Categories/{Logos,Misc} -1 -Q
ls wall/Categories/{Logos,Misc} -1 -hide="*:"
ls wall/Categories/{Logos,Misc} -1 --hide="*:"
ls wall/Categories/{Logos,Misc} -1 --hide=":"
ls wall/Categories/{Logos,Misc} -1 --hide=".*:"
ls wall/Categories/{Logos,Misc} -1 --hide="\w*:"
ls wall/Categories/{Logos,Misc} -1 --hide="\w+:"
ls wall/Categories/{Logos,Misc} -1 --hide="\w+\:"
ls wall/Categories/{Logos,Misc} -1 --hide="\w*"
ls wall/Categories/{Logos,Misc} -1 --hide=".*"
ls wall/Categories/{Logos,Misc} -1 -tr
ls wall/Categories/{Logos,Misc} -1 -t
ls wall/Categories/{Logos,Misc} -1 | wc -l
ls wall/Categories/{Logos,Misc} -1 | wc
ls wall/Categories/{Logos,Misc} -1 | grep -E "*.[jpg|jpeg|png|gif]"
ls wall/Categories/{Logos,Misc} -1 | grep "*.[jpg|jpeg|png|gif]"
ls wall/Categories/{Logos,Misc} -1 | grep -E "*.[jpg|jpeg|png|gif]"
ls wall/Categories/{Logos,Misc} -1 | grep -E "*.(jpg|jpeg|png|gif)"
ls wall/Categories/{Logos,Misc} -1 | grep -E "*.(jpg|jpeg|png|gif)" | shuf -1
ls wall/Categories/{Logos,Misc} -1 | grep -E "*.(jpg|jpeg|png|gif)" | shuf -n 1
ls wall/Categories/{Logos,Misc} -1 -R | grep -E "*.(jpg|jpeg|png|gif)" | shuf -n 1
exit
man awesome
awesome -k
cp .config/awesome/rc.lua .config/awesome/rc.lua.old 
awesome -k
date
date %s
date +"%s"
date +"%H"
date "%H"
date +"%H"
time +"%H"
time
times
date
date - date
d = date
d = $(date)
d=$(date)
d1=$(date)
$d1-$d
date %s
$d1-$dman date
man date

date --date='24:00 this Fri'
date --date='23:00 this Fri'
date --date='23:00 prev Fri'
date --date='23:00 past Fri'
date --date='23:00 next Fri'
date --date='23:00 last Fri'
date --date='23:00 this tue'
date --date='23:00 next tue'
date --date='23:00 last tue'
exit
poweroff
./.wallchan.sh 
exit
./.wallchan.sh 
cat .config/wallchan/wallchan.conf
./.wallchan.sh 
cat .wallchan.sh 
vim .wallchan.sh 
./.wallchan.sh 
cp .wallchan.sh /usr/bin/wallchan 
sudo cp .wallchan.sh /usr/bin/wallchan 
chmod 555 /usr/bin/wallchan 
exit
history | grep hwclock
sudo ntpd -qg
sudo hwclock -w
./.wallchan.sh 
exit
./.wallchan.sh 
ps ax | grep wallrotater
exit
mc
exit
chromium 
exit
poweroff
killall -9 liferea
ecit
exit
history|grep showmount 
showmount 10.11.1.103
ip addr show
showmount 10.11.1.103
exit
sudo exit
exit
rtorrent 
wget -O /media/Stuff/Downs/Misc/Frozen.Synapse.exe http://www.ex.ua/load/10714830
wget -c -O /media/Stuff/Downs/Misc/Frozen.Synapse.exe http://www.ex.ua/load/10714830
exit
wget -O /media/Stuff/Downs/Movies/RED.2010.RUS.ENG.mkv
wget -O /media/Stuff/Downs/Movies/RED.2010.RUS.ENG.mkv http://fs.ua/get/dl/8r4feaw0aq4mdaimsimj1bh6h/Red.2010.BD.Rip.1080p.h264.Rus.Eng.mkv
history | grep mount
sudo mount.nfs4 192.168.42.73:/media/Stuff /mnt/
sudo mount.nfs4 10.11.1.103:/media/Stuff /mnt/
mc
mcsudo umount /mnt
sudo umount /mnt 
sudo mount.nfs4 10.11.1.103:/media/Stuff /mnt/
mc
sudo mount.nfs4 10.11.1.103:/media/Stuff /mnt/ -o remount
mc
sudo unmount /mnt
sudo umount /mnt
mount
sudo umount /mnt
ps ax | grep moun
kill -9 344
sudo kill -9 344
mount
ps ax | grep moun
sudo umount /mnt
nautilus
exit
mc
sudo umount /media/USB 
mc
exit
tar xvf DA.tar 
sudo mount /dev/sdc1 /media/USB/
mc
exit
htop
exit
chromium 
exit
sudo mount.cifs //10.11.1.10/Public /mnt -o rw,user=wizzardich
sudo mv
sudo mc
cd Downloads/Executables/df_linux/
./df 
sudo pacman -S multilib.sdl
sudo pacman -S sdl sdl_sound sdl_ttf
./df
cd ..
mc
cd Executables/df_linux/
./df
exit
pacman -S multilib.sdl
sudo pacman -S multilib.sdl
sudo vim /etc/pacman.conf 
pacman -S lib32-sdl lib32-sdl_image lib32-sdl_ttf 
sudo pacman -S lib32-sdl lib32-sdl_image lib32-sdl_ttf 
sudo pacman -S lib32-gtk
sudo pacman -S lib32-gtk2 
sudo pacman -S lib32-glu
sudo pacman -S lib32-openal 
sudo pacman -S openal 
sudo pacman -S lib32-snd 
sudo pacman -S snd
sudo pacman -Ss snd
sudo pacman -S snd
sudo pacman -S snd lib32-libsndfile 
exit
ncmpcpp
pulseaudio 
alsamixer 
ncmpcpp
exit
mc
exit
history | grep ntp
sudo ntpd -qg
sudo hwclock -w
mc
exit
chromium 
exit
./imgdwnldr.sh -h
./imgdwnldr.sh -k "gif\|jpeg\|jpg\|png" -o /media/Stuff/Downs/To.hobius/Girls/68 -l http://www.shockblast.net/girls-they-just-wanna-have-fun-68/
ls
./linkgetter 
vim linkgetter 
./imgdwnldr.sh -k "gif\|jpeg\|jpg\|png" -o /media/Stuff/Downs/To.hobius/Girls/68 -l http://www.shockblast.net/girls-they-just-wanna-have-fun-68/
exit
ncmpcpp
conky 
ls
ls -la
gnome-control-center 
exit
conky
exit
killall -9 conky
ip addr
exit
ifconfig
sudo systemctl start dhcpcd.service 
ifconfig
ip addr help
sudo pacman -Syu
exit
ps ax | grep conky
exit
ip addr
mc
./start_conky.sh
time
time %H
./start_conky.sh
reboot
exit
gnome-control-center 
netcfg wireless
su
ifconfig
modprobe broadcom
sudo modprobe broadcom
ifconfig
lspci
dmesg
dmesg | grep broad
dmesg | grep -i broad
dmesg | grep -i net
dmesg | grep -i EE
dmesg 
su
rfkill list
exit
cat << EOF > tickets
Номер заказа - 20013

на меня, Попадюка Николая Виталиевича, 067 430 1331, если будут уточнять.

Выдача:

1) м. «Площадь Льва Толстого», подземный переход , тел. (044) 229-74-82, время работы:        понедельник- пятница с 10:00 до 20:00, суббота-воскресенье с 10:00 до 19:00;

2) м. «Майдан Незалежности», ТРЦ «Глобус», квартал подарков, тел. 096-491-18-95, время работы: понедельник - воскресенье с 11:00 до 20:30;

3) м. «Дворец Украина», подземный переход, тел. (044) 229-74-81, время работы: понедельник - пятница с 10:00 до 19:30, суббота - воскресенье с 10:00 до 19:00;

4) ТЦ «Метроград», квартал мужской одежды, вход с ул . Большая Васильковская (Красноармейская), 16, тел. (044) 247-57-09, время работы касс: понедельник - воскресенье с 10:00 до 20:00.
EOF

cat tickets
rm /etc/localtime 
sudo rm /etc/localtime 
ntptime 
ntpq -qp
history | grep ntp
sudo ntpd -qg
sudo hwclock -w
pacman -S rfkill
sudo pacman -S rfkill
rfkill list
uname -a
cd Downloads/Builds/
tar xvf downgrade.tar.gz 
cd downgrade/
mkpkg -s
makepkg -s
sudo pacman -U downgrade-3.3-1-any.pkg.tar.xz 
downgrade --help
downgrade linux linux-headers
reboot
exit
rfkill list
sudo pacman -Syu
iwconfig
rfkill list
mc
uname -a
cd Downloads/
mc
make
locate asm
find /usr/include/ -type d -iname "asm"
find /usr/include/ams -iname "system.h"
find /usr/include/asm -iname "system.h"
ls /usr/include/asm
find /usr/ -type d -iname ""
sudo modprobe wl
sudo modprobe wlcore
iwconfig
pacman -Q
pacman -Q wire
pacman -Q | grep wire | 
lsmod | grep wire
lsmod | grep wl
modprobe bcma
sudo modprobe bcma
dmesg | grep bcma
dmesg
pacman -U /var/cache/pacman/pkg/linux-3.7.4-1-x86_64.pkg.tar.xz 
sudo pacman -U /var/cache/pacman/pkg/linux-3.7.4-1-x86_64.pkg.tar.xz 
pacman -R wireless-bcm43142-oneiric-dkms 
sudo pacman -R wireless-bcm43142-oneiric-dkms 
reboot
ps ax | grep ntp
history | grep ntp
sudo ntpd -qg
ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
sudo ntpd -qg
sudo hwclock -w
exit
uname -r
cd Downloads/Builds/wireless-bcm43142-oneiric-dkms/
ls
makepkg -s
makepkg -s -f
makepkg -f
makepkg --help
makepkg -f -s -e
makepkg -f -s
rm -r src
makepkg -f -s
sudo pacman -U wireless-bcm43142-oneiric-dkms-6.20.55.19-4-x86_64.pkg.tar.xz 
pacman -U /var/cache/pacman/pkg/linux-headers-3.7.4-1-x86_64.pkg.tar.xz 
sudo pacman -U /var/cache/pacman/pkg/linux-headers-3.7.4-1-x86_64.pkg.tar.xz 
sudo pacman -U wireless-bcm43142-oneiric-dkms-6.20.55.19-4-x86_64.pkg.tar.xz 
sudo pacman -R wireless-bcm43142-oneiric-dkms-6.20.55.19-4-x86_64.pkg.tar.xz 
sudo pacman -R wireless-bcm43142-oneiric-dkms 
sudo pacman -U wireless-bcm43142-oneiric-dkms-6.20.55.19-4-x86_64.pkg.tar.xz 
iwconfig 
gnome-control-center 
exit
./.wallchan.sh 
cat .wallchan.sh 
vim .wallchan.sh 
cat .wallchan.sh 
./.wallchan.sh 
vim .wallchan.sh 
./.wallchan.sh 
vim .wallchan.sh 
./.wallchan.sh 
date +%H
vim .wallchan.sh 
./.wallchan.sh 
sudo mv .wallchan.sh /usr/bin/wallchan 
exit
vlc Star.Wars.The.Clone.Wars.S05E16.The.Lawless.720p.WEB-DL.x264.AAC.mp4 
sudo pacman -S vlc
vim /home/wizzardich/.config/vlc/vlcrc 
exit
mc
exit
rtorrent 
exit
leclipse 
java --version
sudo pacman -S jdk7-openjdk openjdk7-src openjdk7-doc 
leclipse 
cat ../TPCSSpace/.metadata/.log 
ls
cd ..
ls
cd ..
ls
mc
ncmpcpp
mc
rtorrent 
cat /proc/cpuinfo 
reboot
gnome-control-center 
rtorrent 
mc
exit
pkill x
sudo pkill x
history | grep pkill
sudo pkill X
reboot
python2
exit
mc
exit
ncmpcpp
exit
sudo pacman -S libreoffice
pacman -S evince
sudo pacman -S evince
ncmpcpp
mc
exit
rtorrent 
mc
ncmpcpp
poweroff
cat tickets
exit
wget -O Downloads/PDFs/real-time_scheduling.pdf http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&ved=0CDcQFjAA&url=http%3A%2F%2Fwww.cse.iitb.ac.in%2F~cs684%2Fpapers%2FSchedulingAlgorithmsAndOperatingSystemsSupportForRTSystems.pdf&ei=VVAWUZmZCo-TswapioGIDw&usg=AFQjCNHMp4DBLLHQTgEKqRITCRDM2JSZEQ&sig2=SZqt7rJsC0SKl5HQdVmG9Q&bvm=bv.42080656,d.Yms
wget -O Downloads/PDFs/real-time_scheduling.pdf "http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&ved=0CDcQFjAA&url=http%3A%2F%2Fwww.cse.iitb.ac.in%2F~cs684%2Fpapers%2FSchedulingAlgorithmsAndOperatingSystemsSupportForRTSystems.pdf&ei=VVAWUZmZCo-TswapioGIDw&usg=AFQjCNHMp4DBLLHQTgEKqRITCRDM2JSZEQ&sig2=SZqt7rJsC0SKl5HQdVmG9Q&bvm=bv.42080656,d.Yms"
wget -O Downloads/PDFs/real-time_scheduling.pdf "http://www.cse.iitb.ac.in/~cs684/papers/SchedulingAlgorithmsAndOperatingSystemsSupportForRTSystems.pdf"
wget -c -O Downloads/PDFs/real-time_scheduling.pdf "http://www.cse.iitb.ac.in/~cs684/papers/SchedulingAlgorithmsAndOperatingSystemsSupportForRTSystems.pdf"
evince Downloads/PDFs/real-time_scheduling.pdf 
rtorrent 
mc
gnome-control-center 
exit
wget -O Downloads/Kopetz.pdf http://vmg.pp.ua/books/%D0%9A%D0%BE%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D1%8B%D0%98%D1%81%D0%B5%D1%82%D0%B8/_%D0%9F%D0%A0%D0%9E%D0%A7%D0%95%D0%95/Real-Time%20Systems%20Second%20Edition.pdf
evince Downloads/Kopetz.pdf 
exit
tracepath 216.81.59.173
echo tracepath 216.81.59.173 > episode.iv
cat episode.iv 
exit
chromium &
mc
exit
OB
mc
exit
find /etc/ -iname "*dropbox*"
sudo find /etc/ -iname "*dropbox*"
sudo find /usr/ -iname "*dropbox*"
cat /usr/bin/dropboxd 
echo $USER
exit
rtorrent 
exit
mc
sudo pacman -S screen
screen -d -m -S rtorrent rtorrent
screen -r
ls
man killall
sudo cat << EOF > /etc/systemd/system/rtorrent@.service
[Unit]
Description=rTorrent

[Service]
Type=forking
User=%I
ExecStart=/usr/bin/screen -d -m -S rtorrent /usr/bin/rtorrent
ExecStop=/usr/bin/killall -w -s 2 rtorrent

[Install]
WantedBy=multi-user.target
EOF

sudo vim /etc/systemd/system/rtorrent@.service
sudo systemctl enable rtorrent@$USER.service 
reboot
chromium &
mc
exit
sreen -r
screen -r
pacman -S openssh
sudo pacman -S openssh
ssh-keygen 
cd .ssh/
cat id_rsa
cat id_rsa.pub 
ssh -t rtorrent@127.0.0.1 'screen -r'
cat /media/Stuff/nmap.txt 
`cat /media/Stuff/nmap.txt`
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" 192.168.1.0/24
sudo nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" 192.168.1.0/24
sudo nmap -sS -sU -T4 -A -v -Pn -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" 192.168.1.0/24
mc
arp -a
ma
arp
poweroff
screen -r
exit
mc
reboot
sudo systemctl status ntpd.service
history | grep ntp
ntpq -qp
ntpd -qg
sudo ntpd -qg
ntpdate 
screen -r
mc
chromium &
reboot
mc
wget -O Downloads/Builds/sage.tar.gz http://mirror.yandex.ru/mirrors/sage.math.washington.edu/linux/64bit/sage-5.6-linux-64bit-ubuntu_8.04.4_lts-x86_64-Linux.tar.gz
exit
./lab.sage
tar xvf matplotlib-1.2.0.tar.gz 
python2 setup.py build
tar xvf numpy-1.7.0.tar.gz 
python2 setup.py build
python2 setup.py install
sudo python2 setup.py install
python2 setup.py build
python2 setup.py install
sudo python2 setup.py install
./lab.sage
./lab.py
python2
mc
ln -s sage /usr/bin/sage
sudo ln -s sage /usr/bin/sage
sage
chmod +x /usr/bin/sage 
./sage 
sage
./sage
python2
python
ln -s /usr/bin/python2 /usr/bin/python
sudo ln -s /usr/bin/python2 /usr/bin/python
./sage
python
make
pacman -S openssl
sudo pacman -S openssl
./sage
sudo pacman -Ss sslh 
sudo pacman -Ss openssl
sudo pacman -S python2-pyopenssl 
./sage
make
./config
make
make test
sudo make install
./sage 
make
pacman -S ocatave
pacman -S octave 
sudo pacman -S octave 
octave
exit
exit
vim
exit
pacman -S sage-mathematics-5.6-1-x86_64.pkg.tar.xz 
sudo pacman -S sage-mathematics-5.6-1-x86_64.pkg.tar.xz 
sudo pacman -U sage-mathematics-5.6-1-x86_64.pkg.tar.xz 
sudo rm /usr/bin/sage 
sudo pacman -U sage-mathematics-5.6-1-x86_64.pkg.tar.xz 
sage
exit
python
sudo pacman -S sage-mathematics 
mc
exit
python2 simple_plot.py 
cat lab.sage 
cat lab.sage | grep import
cd ~
cat << EOF > sage
sage: def W_nu(nu):                                                                                                 
....:     tn = sum([(ti**nu)/m for ti in fails]) + (T**nu) * (N - m)/m
</ tn) - 1)*(log(ti) - (1.0/nu)*log(tn)) for ti in fails]) + (T**nu/tn)*(N - m)*log(T/((1.0/nu)*log(tn)))           
....: 
sage: plot(W_nu)
verbose 0 (2401: plot.py, generate_plot_points) WARNING: When plotting, failed to evaluate function at 66 points.
verbose 0 (2401: plot.py, generate_plot_points) Last error message: 'unable to simplify to float approximation'

sage: find_root(W_nu, 0.01,10)                                                                                      
1.030590601928393
sage: nu = find_root(W_nu, 0.01,10)
sage: tn =  sum([(ti**nu)/m for ti in fails]) + (T**nu) * (N - m)/m           
sage: tau = tn ** (1.0/nu)     
sage: tau
93727.7195198752
sage: tau ** nu
133033.337524656
EOF

cat sage
vim sage 
exit
exit
ncmpcpp
exit
mc
ntpdate
mc
exit
ls
cd Downloads/Builds/steam/
ls
sudo pacman -U steam-1.0.0.21-2-x86_64.pkg.tar.xz 
exit
cat << EOF > ffmpeg
ffmpeg -i foo.flac -acodec alac foo.m4a
EOF

cat ffmpef
cat ffmpeg
exit
cat /etc/mpd.conf
cat /etc/mpd.conf | grep user
cat /etc/mpd.conf.pacsave 
ps ax | grep mpd
grep -r 'user' /etc/systemd/system/
grep -r 'user' /etc/systemd/
grep -r 'mpd' /etc/systemd/
grep -r 'mpd' /etc/
sudo grep -r 'mpd' /etc/
sudo grep -ri 'mpd' /etc/
sudo systemctl status mpd.service 
cat /usr/lib/systemd/system/mpd.service 
man mpd
vim /etc/mpd.conf
sudo vim /etc/mpd.conf
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
ls -la .mpd/
chgrp audio -r .mpd
chgrp audio .mpd
ls -la .mpd/
chgrp audio .mpd/*
sudo systemctl start mpd.service 
sudo systemctl status mpd.service 
man groupadd
man groups
groups mpd
chmod 775 .mpd/{*,}
ls -la .mpd
sudo systemctl start mpd.service 
sudo systemctl status mpd.service 
chmod -R 666 .mpd/
sudo chmod -R 666 .mpd/
sudo systemctl start mpd.service 
sudo systemctl status mpd.service 
su -c mpd 'cd .mpd'
man su
su -c 'cd .mpd' mpd
man passwd
passwd mpd
sudo passwd mpd
su -c 'cd .mpd' mpd
su mpd
who
su root
cd .mpd/
ls -la .mpd
su wizzardich
whoami 
ls -la
chmod -R 775 .mpd
cd .mpd
su mpd
exit
sudo systemctl start mpd.service
sudo systemctl status mpd.service
chmod -R 777 .mpd
sudo systemctl start mpd.service
sudo systemctl status mpd.service
man useradd 
useradd -G admin mpd
usermod -a -G admin mpd
sudo usermod -a -G admin mpd
sudo systemctl start mpd.service
sudo systemctl status mpd.service
groups mpd
usermod -a -G wizzardich mpd
ls -la /home
chmod 750 /home/wizzardich/
ls -la /home
sudo systemctl start mpd.service
sudo systemctl status mpd.service
su mpd
userdel mpd 
sudo userdel mpd 
ls
vim /etc/mpd.conf
sudo vim /etc/mpd.conf
sudo systemctl start mpd.service
sudo systemctl status mpd.service
sudo vim /etc/mpd.conf
sudo systemctl restart mpd.service
sudo systemctl status mpd.service
sudo vim /etc/mpd.conf
sudo systemctl start mpd.service
sudo systemctl status mpd.service
sudo systemctl restart mpd.service
sudo systemctl status mpd.service
useradd mpd -G audio,mpd
useradd mpd -G audio
sudo useradd mpd -G audio
exit
sudo vim /etc/mpd.conf
exit
groups mpd
groups $USER
cp -r .mpd/ /var/lib/.mpd
sudo cp -r .mpd/ /var/lib/.mpd
chown -R mpd /var/lib/.mpd/
sudo chown -R mpd /var/lib/.mpd/
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
cat /var/lib/.mpd/mpd.log 
cat /var/lib/.mpd/mpd.log | tail
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
cat /var/lib/.mpd/mpd.log | tail
sudo systemctl status alsa-store.service 
sudo systemctl status alsa-restore.service 
sudo pacman -S alsa-plugins 
amixer 
alsamixer 
cat /var/lib/.mpd/mpd.log | tail
htop
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
sudo systemctl restart mpd.service 
sudo systemctl status mpd.service 
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/
cd src/
zip queue.zip Deque.java RandomizedQueue.java Subset.java 
zip queues.zip Deque.java RandomizedQueue.java Subset.java 
exit
leclipse 
exit
mc
exit
ncmpcpp
cal
exit
exit
mc
wallchan 
exit
alsamixer 
exit
killall -9 xautolock
exit
screen -r
exit
man ncmpcpp
man mpd
ncmpcpp
screen -r
screen -R
ps ax | grep screen
ps ax | grep rtorrent
exit
screen -r
ps ax | grep rtorrent
rtorrent 
kill -9 365
ps ax | grep rtorrent
rtorrent 
exit
mc
chromium &
reboot
ncmpcpp
screen -r
kilall rtorrent
killall rtorrent
rtorrent 
cat /etc/systemd/system/rtorrent@.service 
sudo systemctl start rtorrent@$USER.service
screen -r
man screen
screen -r
chromium &
mc
exit
mc
exit
mc
exit
mc
killall firefox
exit
ncmcpcpp
ncmpcpp
exit
screen -r
mc
reboot
exit
cat sage
exit
sage
cat sage
cat << EOF > sagev1
sage: var('nu tau')                                                                                           
(nu, tau)
sage: fails = [30,150,270,330,450,570,690,810,930,1050]                                                       
sage: N=1000                                                                                                  
sage: T=1080                                                                                                  
sage: m=10                                                                                                    
sage: T0e=(sum(fails) + (N-m)*T)/m                                                                            
sage: T0e                                                                                                     
107448
sage: def W_nu(nu):                                                                                           
....:     tn = sum([(ti**nu)/m for ti in fails]) + (T**nu) * (N - m)/m                                              
....:     return m/nu - sum ([ ((ti**nu / tn) - 1)*(log(ti) - (1.0/nu)*log(tn)) for ti in fails]) + (T**nu/tn)*(N - m)*log(T/((1.0/nu)*log(tn)))                                                                                            
....: 
sage: plot(W_nu)                                                                                                                                                                                                                 
verbose 0 (2401: plot.py, generate_plot_points) WARNING: When plotting, failed to evaluate function at 66 points.
verbose 0 (2401: plot.py, generate_plot_points) Last error message: 'unable to simplify to float approximation'

sage: plot(W_nu, (0, 1080))                                                                                                                                                                                                      
verbose 0 (2401: plot.py, generate_plot_points) WARNING: When plotting, failed to evaluate function at 180 points.
verbose 0 (2401: plot.py, generate_plot_points) Last error message: '(34, 'Numerical result out of range')'

sage: find_root(W_nu, 0.01,10)                                                                                                                                                                                                   
1.030590601928393
sage: nu = find_root(W_nu, 0.01,10)                                                                                                                                                                                              
sage: tn =  sum([(ti**nu)/m for ti in fails]) + (T**nu) * (N - m)/m                                                  
sage: tau = tn ** (1.0/nu)                                                                                    
sage: T0w = tau * gamma(1 + 1.0/nu)                                                                           
sage: T0w
92585.3138888122
sage: lambdas = [sum([1/(N - j) for j in range (1,i+1)]) for i in range (1,m+1)]      
sage: lambdas
[1/999, 1997/997002, 2988011/994010994, 661678325/165005825004, 823375758379/164180795878980, 491308149853853/81597855551853060, 189822282785576363/27008890187663362860, 53828148677738778739/6698204766540513989280, 60041900106179643719629/6637920923641649363376480, 734215578097327740508991/73017130160058142997141280]
sage: lambdas = [sum([1.0/(N - j) for j in range (1,i+1)]) for i in range (1,m+1)]
sage: lambdas                                                                     
[0.00100100100100100, 0.00200300500901703, 0.00300601403609828, 0.00401003010035531, 0.00501505522598345, 0.00602109144328727, 0.00702814078870519, 0.00803620530483423, 0.00904528704045481, 0.0100553880505558]
sage: fails.append(1080)
sage: fails
[30, 150, 270, 330, 450, 570, 690, 810, 930, 1050, 1080]
sage: alpha = (3/(2*T**3)) * sum([lambdas[i - 1] * (fails[i]**2 - fails[i - 1]**2)/2 for i in range(1,m + 1)])
sage: alpha
4.68266835366726e-6
sage: alpha = (3/(2*T**3)) * sum([lambdas[i - 1] * (fails[i]**2 - fails[i - 1]**2) for i in range(1,m + 1)])  
sage: alpha                                             
9.36533670733452e-6
sage: a1, a2 = var('a1 a2')
sage: eq1 = a1*T**3/3 + a2*T**4/4 == sum([lambdas[i - 1] * (fails[i]**2 
sage: eq2 = a1*T**4/4 + a2*T**5/5 == sum([lambdas[i - 1] * (fails[i]**3 - fails[i - 1]**3)/3 for i in range(1,
sage: solve([eq1, eq2], a1, a2) 
[[a1 == (141057239063389/13497177602953728000), a2 == (-14651626213033/109327
sage: eq2 = a1*T**4.0/4 + a2*T**5.0/5 == sum([lambdas[i - 1] * (fails[i]**3 - fails[i - 1]**3)/3 for i in rang
sage: eq1 = a1*T**3.0/3 + a2*T**4.0/4 == sum([lambdas[i - 1] * (fails[i]**2 - fails[i - 1]**2)/2 for i in rang
sage: solve([eq1, eq2], a1, a2)                                             
[[a1 == (141057239063389/13497177
sage: 
[30, 150, 270, 330, 450, 570, 690, 810, 930, 1050, 1080]
sage: fails = fails[:-1]
sage: solve([eq1, eq2], a1, 
[[a1 == (141057239063389/13497177602953728000), a2 == (-14651626213033/10932713858392519680000)]]
EOF

cat sagev1 
wallchan 
mc
ncmpcpp
htop 
exit
pulseaudio 
alsamixer 
exit
pkill x
pkill X
sudo pkill X
ncmpcpp
reboot
ncmpcpp
exit
history | grep ps
ps ax | grep rtorrent
sudo ps ax | grep rtorrent
exit
nautilus
exit
sage
exit
cat sagev1 
poweroff
vim .config/awesome/rc.lua
mc
screen -r
sage
sage lab2.sage 
sage
sage lab2.sage 
exit
vim lab2.sage
rm lab2.sage 
exit
python
exit
libreoffice &
exit
swipl lab2.pl 
swipl-ld 
man swipl-ld 
swipl-ld lab2.pl 
swipl-ld
swipl
swipl -l lab2.pl 
swipl -l ~/lab1.pl 
sudo pacman -S cups
swipl -l lab2.pl 
swipl -l ~/lab2.pl 
exit
swipl
sudo pacman -S gprolog 
gprolog 
man gprolog
man swipl
vim lab1.pl
vim lab2.pl
exit
mc
exit
gnome-control-center 
dmesg
lsmod
modprobe lp
sudo modprobe lp
sudo gnome-control-center 
lpinfo -v
su
exit
screen -r
sudo systemctl start cups.service
sudo systemctl status cups.service
exit
sudo pkill X
cat lab2.sage 
sage
wallchan 
ps ax | grep wallr
wallchan
mc
sage
ext
exit
screen -r
mc
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
ls -la
git pull
vim .gitignore
git pull -f
rm -r bin/*
git pull -f
git pull src/
git pull help
man git pull
vim .gitignore
git pull
cp .gitignore .git/
vim .gitignore
git pull
git fetch
ls
ls -la
cat .gitignore 
cd ..
ls
cd Mort/
ls -la
rm -rf *
ls -la
rm *
ls 
ls -la
rm .*
rm -r .git/
ls -la
git clone git@github.com:Wizzardich/Mort.git
ls -la
cp Mort/* ./
cp -r Mort/* ./
ls
ls Mort/
rm -r Mort/
ls
ls -la
git pull
ls
ls -la
cd ..
ls
ls -la
rm -r Mort/
ls -la
git clone git@github.com:Wizzardich/Mort.git
ls -la
cd Mort/
ls -la
git pull
git add src/com/lab514/mort/generators/*
git add src/com/lab514/mort/processes/*
git commit
vim .gitignore
git commit
rm bin/*
rm -r bin/*
git commit
git add -u
git commit
git add .gitignore
git commit
git push
git pull
ls
ls -la
cd .git/
ls
cd ..
vim .gitignore 
git commit -a
git pull
git push
git pull
exit
leclipse 
exit
screen -r
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/
cd Mort/
ls
git pull 
cat src/com/lab514/mort/God.java 
history | grep git
exit
screen -r
mc
wallrotater 
exit
python
exit
leclipse 
exit
screen -r
exit
mc
exit
mc
exit
ip addr sh
exit
dropboxd restart
sudo systemctl status dropbox
sudo systemctl status dropboxd
sudo systemctl status dropboxd.service
sudo systemctl status dropbox.service
dropbox restart
dropbox stop
dropbox start
kilall dropbox
killall dropbox
dropbox start
exit
screen -r
cat /etc/systemd/system/rtorrent@.service 
/usr/bin/screen -d -m -S rtorrent /usr/bin/rtorrent
screen- r
screen -r
vim .rtorrent.rc 
sudo systemctl start rtorrent@$USER.service
screen -r
sudo systemctl stop rtorrent@$USER.service
screen -r
cd /media/Stuff/Downs/M
cd /media/Stuff/Downs/Misc/
ls
ls -la
cd .session/
ls -la
rm rtorrent.dht_cache 
sudo systemctl start rtorrent@$USER.service
screen -r
cd ~/Downloads/Builds/qbittorrent/
ls -a
cat qbittorrent.install 
sudo pacman -U qbittorrent-3.0.6-1-x86_64.pkg.tar.xz 
rm -r src/
ls -la
rm qbittorrent-3.0.6-1-x86_64.pkg.tar.xz 
makepkg
makepkg -w
makepkg -s
cd ..
rm -r qbittorrent/
tar xvf qbittorrent.tar.gz 
cd qbittorrent/
makepkg -s
screen -r
man rtorrent 
screen -r
vim /home/wizzardich/.rtorrent.rc 
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
vim /home/wizzardich/.rtorrent.rc 
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
rtorrent 
sudo pacman -S rtorrent 
rtorrent 
sudo pacman -R rtorrent 
sudo pacman -S rtorrent 
rtorrent 
cat /var/log/journal/b6268f87cd2140519008ff658fd6dc13/
cd ~
vim .rtorrent.rc 
rtorrent 
cp .rtorrent.rc .rtorrent.rc.old
find /usr -iname "*rtorrent*"
cp /usr/share/doc/rtorrent/rtorrent.rc .rtorrent.rc
cat .rtorrent.rc
rtorrent 
mv .rtorrent.rc.old .rtorrent.rc
rtorrent 
sudo systemctl start rtorrent@$USER.service
vim .rtorrent.rc 
sudo systemctl restart rtorrent@$USER.service
screen -r
chromium &
screen -r
mc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
ls
zip collinear.zip Point.java Fast.java Brute.java 
exit
leclipse 
exit
mc
exit
cd /media/Stuff/University/
ls
mc
exit
cp -r wall/ /media/Stuff/Downs/DA/wall/
exit
ncmpcpp
exit
wallrotater 
exit
mc
reboot
history | grep VTAR
history | grep ip
ip addr sh
gnome-control-center 
sudo pacman -R wireless-bcm43142-oneiric-dkms 
cd Downloads/Builds/
ls
tar xvf wireless-bcm43142-dkms.tar.gz 
cd wireless-bcm43142-dkms/
ls -la
makepkg -s
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-2-x86_64.pkg.tar.xz 
reboot
ip addr show 
ifconfig 
cd Downloads/Builds/
cd wireless-bcm43142-dkms/
ls -la
pacman -R wireless-bcm43142-dkms 
sudo pacman -R wireless-bcm43142-dkms 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-2-x86_64.pkg.tar.xz 
exit
man rtorrent
vim .rtorrent.rc 
ip addr sh
rpcinfo 
tcpdump
sudo lsof
sudo lsof -i
sudo netstat -lptu
sudo netstat -tulp
sudo netstat -tulpn
sudo netstat -lptun
exit
screen -r
rtorrent
mc
mc
ncmpcpp
mc
pkill X
man kill
kill -l
killall -15 sage
ps ax | grep sage
kill -15 7660
ps ax | grep sage
kill -15 7671
sudo pkill X
ncmpcpp
reboot
ncmpcpp
exit
sage
exit
mc
screen -r
sudo systemctl start rtorrent@wizzardich
screen -r
screen -r
sudo systemctl start rtorrent@wizzardich
screen -r
exit
cat << EOF > lab3
sage: def P(t):^J    return e^(-(t/tau1)**nu1 - lmbd*t - (t/tau2)**nu2)    
....: 
sage: def Q(t):^J    return 1 - P(t)                                       
....: 
sage: def Q1(t):^J    return Q(T+t) - Q(t)                             
....: 
sage: def Sp(t):^J    return 0.1*t + Q(t) + (9001)*Q1(t)               
....: 
sage: t = var('t')                                                         
sage: tau1 = 8e9                      
sage: tau2 = 16e4
sage: taut = 1.9 
sage: T=44000                             
sage: nu1=0.5
sage: nu2=2.9
sage: lmbd = 9e-7
sage: dS = diff (Sp(t), t)
sage: t1 = find_root(dS(t), 0.01, 1e6)                                     
/opt/sage/local/lib/python2.7/site-packages/IPython/core/interactiveshell.py:2721: DeprecationWarning: Substitution using function-call syntax and unnamed arguments is deprecated and will be removed from a future release of Sage; you can use named arguments instead, like EXPR(x=..., y=...)
See http://trac.sagemath.org/5930 for details.
  exec code_obj in self.user_global_ns, self.user_ns
sage: t1
0.1987321948958915
sage: St = Sp(t1)                                                          
sage: Sn = 9001*Q(t1)                                                      
sage: St
571.559437532063
sage: Sn
0.0464719189738403
sage: T0n = numerical_integral(P, 0, 1e8)                                  
sage: T0t = numerical_integral(P, t1, 1e8)
sage: T0n
(132377.15860636786, 0.13098555564193504)
sage: T0t
(132376.95988973783, 0.13092513689218777)
sage: for i in range(1,8):^J    print i,P(10**i),(P(t1 + 10**i) - P(10**i))
....:     
1 0.999955645643981 -5.28419346390585e-7
2 0.999798216451598 -2.89842917888805e-7
3 0.998746826930269 -2.13953746608375e-7
4 0.989614130034295 -2.06368898969522e-7
5 0.705093550557191 -1.16842679187545e-6
6 2.13578131605927e-89 -2.50562670502038e-93
7 9.36273659555957e-70124 -8.67182331603715e-70126
sage: 
EOF

cat lab3
exit
mc
exit
cat << EOF > lab4
sage: N = 637534208
sage: lmbd = 9e-15
sage: lmbdf = 11e-10
sage: Tp = 4 * 365 * 24
sage: Tc = 0.5
sage: dlt = 0.04
sage: def P(l, t):
....:     return e**(-l*t)
....: 
sage: n = 8*N/64
sage: for k in range(1,4):^J    r = 1^J    while r < (log(sum([binomial(64 + r, i) for i in range(1, k + 1)]))/log(2)):^J        r += 1;^J    print r
....:     
7
12
17
sage: r = [7,12,17]
sage: def P_kk(l , t, r, k):^J    return sum([binomial((64 + r), i)*(P(l,t)**(64 + r - i))*(1 - P(l, t))**i for i in range (0, k + 1)])
....: 
sage: P_kk(lmbd, t, r[0], 1)                                                                                                           
-71*(e^(-(9.00000000000000e-15)*t) - 1)*e^(-(6.30000000000000e-13)*t) + e^(-(6.39000000000000e-13)*t)
sage: P_kk(lmbd, t, r[1], 2)
2850*(e^(-(9.00000000000000e-15)*t) - 1)^2*e^(-(6.66000000000000e-13)*t) - 76*(e^(-(9.00000000000000e-15)*t) - 1)*e^(-(6.75000000000000e-13)*t) + e^(-(6.84000000000000e-13)*t)
sage: P_kk(lmbd, t, r[2], 3)
-85320*(e^(-(9.00000000000000e-15)*t) - 1)^3*e^(-(7.02000000000000e-13)*t) + 3240*(e^(-(9.00000000000000e-15)*t) - 1)^2*e^(-(7.11000000000000e-13)*t) - 81*(e^(-(9.00000000000000e-15)*t) - 1)*e^(-(7.20000000000000e-13)*t) + e^(-(7.29000000000000e-13)*t)
sage: for t in range(1,6):^J    print t, P_kk(lmbd, t*365*24, 0, 0),^J    for k in range(1,4):^J        print P_kk(lmbd, t*365*24, r[k - 1], k),^J    print "\n"    
....:     
1 0.668909965069003 1.00000000000000 1.00000000000000 1.00000000000000 

2 0.447440793821441 1.00000000000000 1.00000000000000 1.00000000000000 

3 0.299297607199095 0.999999982304871 0.999999991152436 1.00000000000000 

4 0.200203265893392 0.999999982304871 1.00000000000000 1.00000000000000 

5 0.133917959693457 0.999999964609743 1.00000000000000 1.00000000000000 

sage: for t in range(1,6):^J    print t, P_kk(lmbdf, t*365*24, 0, 0),^J    for k in range(1,4):^J        print P_kk(lmbdf, t*365*24, r[k - 1], k),^J    print "\n"                                                                          
....:     
1 1.14935200333486e-21344 1.04190126723670e-8 0.995002692246557 0.999998858664836 

2 1.32101088307162e-42688 1.21829084535263e-32 0.960734672792045 0.999981738793695 

3 1.51830678146549e-64032 1.68037902903242e-72 0.873611841044989 0.999907582612413 

4 1.74506948275525e-85376 2.87332932395606e-128 0.726070015461515 0.999708117216750 

5 2.00569896464486e-106720 6.40076087203709e-200 0.535328970385184 0.999287998112090 

sage: for t in range(1,11,5):^J    print t, P_kk(lmbdf, t, 0, 0),^J    for k in range(1,4):^J        print P_kk(lmbdf, t, r[k - 1], k),^J    print "\n"           
....:     
1 0.00365996779352676 0.999999761115788 1.00000000000000 0.999999991152436 

6 2.40360609100494e-15 0.999991373661860 1.00000000000000 1.00000000000000 

sage: for t in range(1,12,5):^J    print t, P_kk(lmbdf, t, 0, 0),^J    for k in range(1,4):^J        print P_kk(lmbdf, t, r[k - 1], k),^J    print "\n"
....:     
1 0.00365996779352676 0.999999761115788 1.00000000000000 0.999999991152436 

6 2.40360609100494e-15 0.999991373661860 1.00000000000000 1.00000000000000 

11 1.57851789077045e-27 0.999971006951575 0.999999991152436 1.00000000000000 

sage: for t in range(0,12,5):^J    print t, P_kk(lmbdf, t, 0, 0),^J    for k in range(1,4):^J        print P_kk(lmbdf, t, r[k - 1], k),^J    print "\n"
....:     
0 1.00000000000000 1.00000000000000 1.00000000000000 1.00000000000000 

5 6.56728773249213e-13 0.999994010216800 1.00000000000000 1.00000000000000 

10 4.31292860854950e-25 0.999976032235112 1.00000000000000 1.00000000000000 
sage: T0 = numerical_integral(lambda t: P_kk(lmbd, t, 0, 0), 0, 1e8)[0]
sage: T0
21785.322513783554
sage: for k in range (1,4):^J    print numerical_integral(lambda t: P_kk(lmbd, t, r[k - 1], k) , 0, 1e11)[0]
....:     
221288253.007
5592509400.27
29816228295.6
sage: numerical_integral(lambda t: P_kk(lmbdf, t, 0, 0), 0, 1e3)[0]
0.17824353999895137
sage: for k in range (1,4):^J    print numerical_integral(lambda t: P_kk(lmbdf, t, r[k - 1], k) , 0, 1e6)[0]
....:     
1810.54025189
45756.8951426
243950.958239
EOF

cat lab3
cat lab4
exit
ncmpcpp
exit
mc
exit
cat lab3
cat lab4
exit
sage
exit
dft
fdsik -l
sudo fdsik -l
sudo fdisk -l
exit
mc
su
sudo umount /dev/sdc1
exit
ncmpcpp
exit
wallchan 
exit
mc
exit
mc
exit
mc
exit
lspci | grep VGA
finr /dev -group video
find /dev -group video
exit
egrep -i " connected|card detect|primary dev" /var/log/Xorg.0.log
cat /etc/X11/xorg.conf
find /etc/ -iname "xorg"
find /usr/ -iname "xorg"
find /usr/ -iname "*xorg*"
find /etc/ -iname "*xorg*"
cat /etc/X11/xorg.conf.
cat /etc/X11/xorg.conf.fglrx-0 
pacman -Q catalyst-dkms
pacman -S catalyst-dkms catalyst-utils 
sudo pacman -S catalyst-dkms catalyst-utils 
sudo pacman -R intel-dri mesa mesa-libgl 
sudo pacman -Q xf86-video-ati
exit
sudo mount /dev/sdc1 /media/USB
exit
sudo pacman -S unetbootin 
sudo pacman -S gparted
gparted
sudo gparted
exit
winusb --help
history | grep winusb
winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
sudo winusb -v --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git pull
leclipse 
cd ../MortalSpace/Mort/
git pull
git add src/com/lab514/mort/entities/ReadyRating.java src/com/lab514/mort/entities/Task.java
git add src/com/lab514/mort/entities/ReadyRating.java src/com/lab514/mort/entities/Task.java src/com/lab514/mort/generators/*
git commit
git push
history | grep winusb
man winusb
winusb --help
winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
sudo winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
mc
sudo winusb --install /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
umount /media/USB
sudo umount /media/USB
sudo winusb --install /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
sudo winusb --install /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc1
sudo winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc1
sudo winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x86_dvd_915417.iso /dev/sdc
sudo winusb --format /media/Stuff/Downs/Misc/Windows\ 8\ 32bit\ 64bit\ MSDN/en_windows_8_x64_dvd_915440.iso /dev/sdc
sudo pacman -Syu
exit
sudo pacman -R xf86-video-intel 
sudo pacman -S xf86-video-a
sudo pacman -S xf86-video-ati
pacman -S catalyst-dkms catalyst-utils lib32-catalyst-utils 
sudo pacman -S catalyst-dkms catalyst-utils lib32-catalyst-utils 
pacman -R ati-dri intel-dri 
sudo pacman -R ati-dri intel-dri 
sudo pacman -R xf86-video-ati ati-dri intel-dri 
sudo pacman -S catalyst-dkms catalyst-utils lib32-catalyst-utils 
aticonfig --help | less
aticonfig --initial
sudo aticonfig --initial
exit
ncmpcpp
exit
python
vim
screen -r
sudo systemctl start rtorrent@wizzardich
screen -r
sudo mount.cifs //10.11.1.10/Public -o rw,user=wizzardich
sudo mount.cifs //10.11.1.10/Public /mnt/ -o rw,user=wizzardich
sudo mc
;99;11M;99;11M
sudo mc
sudo rm Star.Wars.The.Clone.Wars.S05E20.The.Wrong.Jedi.HDTV.x264-FQM.mp4 
sudo cp Star.Wars.The.Clone.Wars.S05E20.The.Wrong.Jedi.HDTV.x264-FQM.mp4 /mnt/Video/Cartoons
cat Brute.java 
exit
sudo systemctl restart dropbox.service

sudo systemctl start dropbox
sudo systemctl start dropboxd
sudo systemctl status dropboxd
sudo systemctl status dropbox
droppbox stop
dropbox stop
killall dropbox
dropbox start
mc
exit
mc
htop
wallchan 
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/
cd src/
zip 8puzzle.zip Solver.java Board.java 
exit
leclipse 
exit
mc
exit
ncmpcpp
exit
gnome-control-center 
wallrotater 
exit
cat /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/Solver.java 
exit
cat /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/Board
cat /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/Board.java 
exit
screen -r
exit
chromium
screen -t
screen -r
mc
exit
mc
exit
vim .xinitrc 
exit
ps ax | grep uplink
kill -9 7336
ps ax | grep uplink
kill -9 7
ps ax | grep defcon
kill -9 7445
exit
exit
ncmpcpp
wallchan 
ncmpcpp
exit
chromium
exit
mc
exit
reboot
python
exit
killall sage
killall python2
killall python
exit
mc
exit
cat << EOF > lab5
sage: lam = 9e-6
sage: P(t) = e**(-lam * t)
sage: Q(t) = 1. - P(t)
sage: var('t1 t2 t3 t4')                                                                                                                                                   
(t1, t2, t3, t4)
T = 365*24
sage: P_r1 = integrate(P(T - t1)*Q(t1), t1, 0, T, algorithm="sympy")/T
sage: P_r2 = integral(integral(P(T - t1 - t2)*Q(t1)*Q(t2), t2, t1, T, algorithm="sympy"), t1, 0, T, algorithm="sympy")/T*T
EOF

cat << EOF > lab6
sage: nu = 1,7                                                                                                       
sage: tau = 10000
sage: Tv = 38
sage: N = 4
sage: B = 51
sage: C = 0.9
sage: P(t) = e**(-2*(t/tau)**nu)
EOF

vim la6
vim lab6
exit
sage
htop
mc
exit
chromium
exit
vlc VTS_02_1.VOB VTS_02_2.VOB 
mc
exit
mc
cat lab5
exit
cat lab6
exit
sage
exit
htop
exit
poweroff
mc
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
zip kdtree.zip KdTree.java PointSET.java 
exit
leclipse 
exit
ncmpcpp
exit
mc
poweroff
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git pull
leclipse 
exi
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git add src/com/lab514/mort/processes/ErlangProcess.java src/com/lab514/mort/processes/PoissonProcess.java
git commit
git push
git commit
git add src/
git commit
git push
git pull
git push
git add src/
git commit
git push
git commit
git add src/
git commit
git push
exit
sudo mount.cifs //10.11.1.10/Public /mnt -o user=wizzardich
mc
sudo umount /mnt
cd /mnt
ls
mount
mc
ncmpcpp
cd Downloads/
ls
exit
ncmcpcpp
ncmpcpp
exit
chromium &
screen -r
sudo systemctl stop rtorrent@wizzardich.service 
sudo systemctl start rtorrent@wizzardich.service 
screen -r
mc
exit
python
exit
mc
vlc /media/Stuff/Downs/Misc/The\ Walking\ Dead\ S03E13\ HDTV\ x264-2HD\[ettv\]/the.walking.dead.s03e13.hdtv.x264-2hd.mp4 
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
MC
mc
MC
mc
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
mc
reboot
ncmpcpp
exit
mc
ncmpcpp
exit
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git add src/*
git commit
git pull
git push
git add src/*
git pull
git commit
git push
git pull
git add src/*
git pull
git commit
git push
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/
ls -la
cd Mort/
git pull
leclipse 
exit
ncmpcpp
exit
mc
exit
mc
exit
screen -r
ncmpcpp
alsamixer 
ncmpcpp
wallcha
wallchan 
exit
screen -r
htop
mc
ncmpcpp
mc
ncmpcpp
iwconfig
exit
tar xvf wireless-bcm43142-dkms.tar.gz 
makepkg -s
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-2-x86_64.pkg.tar.xz 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
modprobe broadcom 
modprobe wl
sudo pacman -R wireless-bcm43142-dkms 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
exit
mc
exit
pacman -S lynx 
sudo pacman -S lynx 
mc
sudo pacman -S scala scala-docs scala-sources 
exit
mc
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
ncmpcpp
exit
seclipse 
cd ../../L.Eclipse.Indigo/MortalSpace/Mort/
git diff
git pull
less src/com/lab514/mort/God.java 
exit
exit
pkill firefox
exit
ncmpcpp
exit
sage
vim lab7.py
exit
python
chmod +x lab7.py 
./lab7.py 
python
python2
./lab7.py 
python2
./lab7.py 
python2
./lab7.py 
python2
./lab7.py 
python2
exit
screen -r
sudo systemctl  start rtorrent@wizzardich.service
screen -r
sudo systemctl restart rtorrent@wizzardich.service
screen -r
rtorrent 
sudo systemctl status  rtorrent@wizzardich.service
killall screen
ps ax | grep screen
ps ax | grep rtorrent
rpcinfo 
rtorrent
rmls /media/Stuff/Downs/Misc/.session/rtorrent.*
rm /media/Stuff/Downs/Misc/.session/rtorrent.*
sudo systemctl start  rtorrent@wizzardich.service
sudo systemctl status  rtorrent@wizzardich.service
screen -r
exit
ncmpcpp
exit
screen -r
exit
killall libreoffice
ps ax | grep writer
killall writer
kill -9 3412
kill -9 3430
ps ax | grep writer
mc
wallchan
exit
./lab7.py 
exit
ncmpcpp
exit
mc
exit
ps ax | grep drop
kill -9 667
dropboxd start
exit
ncmpcpp
python2
chmod +x lab8.py 
./lab8.py 
exit
mc
vim
vim lab8.py
sudo pkill X
exit
./lab8.py 
[A
./lab8.py 
./lab8_1.py 
exit
vim lab8.py 
cp lab8.py lab8_1.py 
vim lab8_1.py 
exit
swipl -c lab3.pl 
swipl
mc
exit
swipl -c 'lab3.pl' 
swipl -c lab3.pl
swipl -l lab3.pl
exit
vim lab3.pl
exit
mc
exit
./lab8.py 
./lab8_1.py 
exit
vim lab8.py 
exit
mc
exit
man make
exit
scala
exit
mount
df -Tah
exit
seclipse 
rxit
exit
mc
cat /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/src/com/lab514/mort/entities/ReadyRating.java 
exit
seclipse 
exit
zip rcs.zip tmp/*
zip -r rcs.zip tmp/*
exit
ncmpcpp
exit
mc
exit
./theme.lua
diff Commands\ \(deleted\ f76fd5834c2e8c4f785c165a773fa8f0\).txt Commands\ \(deleted\ 8948ec1630752c3b3d0fefb5be2b52e5\).txt 
gthumb Screenshot\ from\ 2013-01-28\ 22:08:34.png 
screen -r
mc
exit
unrar RectorControl.rar 
sudo pacman -S unrar
exit 
mc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git pull
leclipse 
seclipse 
exit
ncmcpp
ncmpcpp
mc
reboot
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git pull
git stash
git pull
exit
leclipse 
exit
mc
exit
mc
exit
htop
exit
seclipse 
exit
ncmpcpp
cal
cal 2013
cal Apr
cal 2013 Apr
cal 2013 4
cal 2013 3
man cal
cal -3
ncmpcpp
exit
mc
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
man xprop
xrandr 
gnome-control-center 
exit 
find . -iname "*.pdf" -print0 | xargs -0 -I {} cp {} PDFs/
mc
exit
mc
exit
vim dkr.lp
vim dkr.pl 
vim
vim dkr.pl 
vim dkr_3.pl
vim dkr.pl 
swipl -l lb2.pro 
tar xvf swi-prolog.tar.gz 
sudo pacman -U swi-prolog-6.2.6-1-x86_64.pkg.tar.xz 
python2
tar xvf pyswip-0.2.3.tar.gz 
python2 setup.py 
python2 setup.py install
sudo python2 setup.py install
python2
cd ~/Documents/LP/
vim lab6.pl
mv lab6.pl lab6.py
vim lab6.py 
chmod +x lab6.py 
./lab6.py 
vim lb2.pro 
vim lab4.pl
./lab6.py
vim lab6.py 
exit
mc
exit
cd Documents/LP/
swipl -c dkr.lp 
swipl -l dkr.lp 
swipl -l dkr.pl 
swipl -l dkr_3.pl 
swipl -l dkr.pl 
swipl -l lb2.pro 
mc
ncmpcpp
leclipse 
exit
mc
leclipse 
cd ..
ls
cd MortalSpace/
cd Mort/
ls
git pull
leclipse 
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
ls
zip wordnet.zip WordNet.java SAP.java Outcast.java 
exit
leclipse 
exit
mc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/
git add *
git add src/
git status
git commit
git pull
git push
exit
leclipse 
exit
htop
rtorrent 
screen -r
exit
mc
exit
sudo pacman -S gimp
gimp Pictures/Screenshot\ from\ 2013-04-01\ 21\:22\:35.png 
exit
man write
write wizzardich Hi
write wizzardich tty0 Hi
write wizzardich tty0
write wizzardich tty2
libreoffice 
exit
pacman -S umleditor 
sudo pacman -S umleditor 
umleditor 
sudo pacman -S icedtea-web-java7
mc
exit
ncmpcpp 
exit
leclipse 
seclipse 
exit
cat /media/Stuff/University/L.Eclipse.Indigo/MortalSpace/Mort/src/com/lab514/mort/processes/ErlangProcess.java 
exit
mc
exit
sudo mount /dev/sdd1 /media/USB
sudo umount /media/USB
mc
exit
mount
dft
mount /dev/dmesg
mount /dev/sdc1 /media/USB/
sudo mount /dev/sdc1 /media/USB/
mc
poweroff
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
seclipse 
exit
ncmpcpp
mc
mc
gnome-control-center 
exit
sudo mount /dev/sdc1 /media/USB/
sudo mc
poweroff
seclipse 
poweroff
mc
exit
screen -r
exit
sage
cat << EOF > REAMDE
1. статья срв.docx
2. Алгоритм
3. Mort.doc(sic!)
4. Статистика
EOF

mc
exit
cat << EOF > lab9
sage: lambdas = [24496, 9276.6, 8.12, 5.25, 3.89, 201.725, 2.8, 4.6, 4.6, 65.4, 3, 830, 0.044]
sage: nums = [18, 1, 1, 1, 1, 1, 33 ,1 ,1, 7, 1, 1, 1] 
sage: Tvs = [0.895, 1.7, 2.1, 2.3, 0.4, 0.88, 1.7, 0.8, 0.8, 0.8, 1, 0.3, 4.5]
sage: len(Tvs)
13
sage: len(nums)
13
sage: len(lambdas)
13
sage: l_wan = sum(lambdas)
sage: l_wan
34902.0290000000
sage: To = (1/l_wan) * 1e6
sage: To
28.6516293938097
sage: Tv = sum([lambdas[i]*Tvs[i] for i in range(0, len(Tvs))])*To
sage: Tv
1.09503602211780e6
sage: Kd = To/(To + Tv)
sage: Kd
0.0000261643262546010
sage: Tv/To
38218.9790000000
sage: Tv
1.09503602211780e6
sage: Tv = sum([lambdas[i]*Tvs[i] for i in range(0, len(Tvs))])*To/1e6        
sage: Tv
1.09503602211780
sage: Kd                                                              
0.0000261643262546010
sage: Kd = To/(To + Tv)                                               
sage: Kd
0.963187940335273
sage: Tv/To                                                           
0.0382189790000000
sage: 
EOF

exit
ncmpcpp
mc
exit
cd Documents/LP/
swipl -c dkr_Solimr.pl 
swipl -l dkr_Solimr.pl 
exit
cd Documents/LP/
vim dkr_Solimr.pl
cat << EOF > test.txt
?- gcd(105, 70, X).
X = 35.

?- 
|    gcd(70, 100, X).
X = 10.

?- 
|    gcd(70, 105, X).
X = 35.
?- gcd_seq([2,4,6,8], X).
X = 2 .

?- gcd_seq([4,16,8,64], X).
X = 4 .

?- gcd_seq([16,128,64], X).
X = 16 .
?- gcd_seq([16,127,64], X).
X = 1 .
?- count([1,2,3,4,1,5,6,1,7,8,1], 1, X).
X = 4.
?- reverse([4,8,15,16,23,42], X).
X = [42, 23, 16, 15, 8, 4] .
?- assert(a(4, 8, 15, 16)).
true.

?- assert(a(8, 15, 16, 23)).
true.

?- assert(a(15, 16, 23, 42)).
true.
:- dynamic a/4.

a(4, 8, 15, 16).
a(8, 15, 16, 23).
a(15, 16, 23, 42).
?- change_facts(a(X,Y,Z,K), 2, 2).
false.

?- listing.
:- dynamic a/2.

a(4, 16).
a(8, 23).
a(15, 42).
EOF

exut
exit
mc
exit
cd Documents/LP/
swipl -l dkr_Wiseman.pl 
exit
cd Documents/LP/
vim dkr_Wiseman.pl
cat << EOF > pow.txt
?- procAdd(5, 5, X).
X = 25 .

?- procAdd(5, 6, X).
X = 30 .

?- pow(2,4).
ERROR: Undefined procedure: pow/2
ERROR:     However, there are definitions for:
ERROR:         pow/3
false.

?- pow(2,4, X).
X = 16 .

?- pow(2,10, X).
X = 1024 .

?- pow(3,7, X).
X = 2187 .

?- pow(3,5, X).
X = 243 .

?- 
% halt
EOF

exit
sudo pkill  X
mc
screen -r
reboot
exit
cd Documents/LP/
swipl -l dkr_Legor.pl 
exit
cd Documents/LP/
vim dkr_Legor.pl
cat << EOF > results_Legor.txt
?- calculate(3, X).
X = 1.5 .

?- calculate(4, X).
X = 2.833333333333333 .

?- calculate(5, X).
X = 4.083333333333333 .

?- sum([4,8,15,16,23,42], 11, X).
X = 96 .

?- assertz(a(2, 4, 8)).
true.

?- assertz(a(4, 8, 15)).
true.

?- assertz(a(8, 15, 16)).
true.

?- listing
|    .

:- dynamic a/3.

a(2, 4, 8).
a(4, 8, 15).
a(8, 15, 16).
true.

?- change_facts(a(X, Y, Z), [23,42]).
false.

?- listing
|    .

:- dynamic a/5.

a(2, 4, 8, 23, 42).
a(4, 8, 15, 23, 42).
a(8, 15, 16, 23, 42).

?- seq(3, X).
X = 3 .

?- seq(5, X).
X = 4 .

?- seq(6, X).
X = 6 .

?- seq(7, X).
X = 7 .

?- seq(8, X).
X = 10 .

?- seq(9, X).
X = 11 .

?- seq(10, X).
X = 16 .

?- seq(11, X).
X = 18 .
EOF

exit
mc
exit
mc
exit
cd Documents/LP/
swipl -l dkr_Yuraro.pl 
exit
mc
exit
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
mc
exit
seclipse 
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/
ls
exit
mc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
zip seamCarver.zip SeamCarver.java 
rm *.zip
zip seamCarver.zip SeamCarver.java 
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
screen -r
exit
ping 8.8.8.8
ncmpcpp
exit
alsamixer 
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
zip baseballElimination.zip BaseballElimination.java 
mv baseballElimination.zip baseball.zip
java BaseballElimination teams4.zip
cd ..
ls
cd bin/
ls
java BaseballElimination ../src/teams4.txt 
cd ..
cd src/
zip baseball.zip BaseballElimination.java 
exit
lecl
leclipse 
exit
ncmpcpp
exit
mc
history | grep ntp
ntpq -qp
ntpd -qg
sudo ntpd -qg
ntpdate 

ntpdate 
exit
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
free -m
hmap
htop
free -m
exit
mc
exit
mc
exit
mc
exit
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
reboot
mc
gthumb 00egg49e.gif 
poweroff
mc
mc
python
exit
ping google.com
exit
ls
vim
mc
exit
reboot
ncmpcpp
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
mc
pkill X
sudo pkill X
su
mc
exit\
cat << EOF > gera.txt
[10:18:10 PM] Огги: Мелкая и костлявая. На голове темное гнездо. Мордаха средней симпотности, глазищи серые, оскал добродушный.
[10:19:22 PM] Wizzardich: К. Плащ, сумка, лютня, арбалет, одежда приключенца?
[10:19:59 PM] Огги: Аха. Вообще на прошлой картинке по части эквипа весьма достоверно было)
[10:20:35 PM] Wizzardich: Кк, круто)
EOF

cat << EOF > wizdrimond.txt
[10:38:10 PM] Wiseman: А. Да.

Без сомнений, по-хоббичьи мелкий (и метра ведь нету) и неполный (отличный у этих путников режим питания в странствиях! Последний раз колбасу отведывали у Олафа),   со слегка плутоватым взглядом. Длинные вьющиеся светлые волосы, ниже плеч. Естественно, как и прочие хоббиты, на лице растительности не имеет. Вечная непонятная полуулыбка на лице. 

Одет он неказисто и неприметно, в тёмных тонах практической воровской одежды (предположительно, что-то лёгкое, выделанное из кожи). При ближайшем рассмотрении становится заметно, что халфлинг наш абсолютно босый, а ведь издалека эти волосатые ноги вполне себе казались обутыми в меховые ботинки. Видно, что за спиной прикреплен арбалет. Никаких мечей не заметно, но кинжал таки в ножнах есть. Естественно, при себе инструменты вора (отмычки, прекрасные дворфийские кусачки и т.д.).
[10:38:30 PM] Wiseman: Как-то так. Описание позже.
EOF

mc
ping google.com
screen -r
mc
dropbox puburl Solimr-halfling,\ v0.75.txt 
dropbox puburl boolean.zip 
exit
man dropbox 
mc
man dropbox 
sudo pacman -Syu
reboot
sudo pacman -R wireless-bcm43142-dkms 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
skype
ps ax | grep skype
skype
su
skype
dmesg
sudo skype
ps ax | grep skype
dmesg
sudo pacman -Q glib2 
sudo pacman -Q glib
sudo pacman -Syu
mc
exit
mc
tar xvf glib-2.34.3.tar.xz 
./configure --prefix=/usr --with-pcre=system && make
sudo make install
skype
dmesg
reboot
tar xvf skype-4.1.0.20.tar.bz2 
./skype
sudo pacman -U skype-4.1.0.20-2-x86_64.pkg.tar.xz 
sudo pacman -R skype 
sudo pacman -U skype-4.1.0.20-2-x86_64.pkg.tar.xz 
sudo pacman -S lib32-qt4 
sudo pacman -U skype-4.1.0.20-6-x86_64.pkg.tar.xz 
skype
dmesg
skype
sudo pacman -U lib32-glib2-2.34.3-1-x86_64.pkg.tar.xz 
skype
exit
skype
dmesg
LD_PRELOAD=/usr/lib/libgobject-2.0.so.0.3400.3 skype
LD_PRELOAD=/usr/lib/libgobject-2.0.so.0 skype
LD_PRELOAD=/usr/lib/libgobject-2.0.la skype
sudo pacman -S glib
sudo pacman -S glib2
sudo pacman -R glib2
sudo pacman -S glib2
sudo pacman -S glib-networking 
sudo pacman -S glibc 
skype
sudo pacman -S skype
wallchan 
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
mc
exit
mc
exit
screen -r
ifconfig
ping google.com
ping 127.0.0.1
ping VTAN
nslookup
ping 8.8.8.8
reboot
python
exit
mc
fortune
poweroff
sudo mount /dev/sda7 /mnt  
chmod 644 WiiDesktopVR.zip 
vim WiiDesktopVR.cs Warper.cs CrosshairCursor.cs AffineTransformSolver.cs 
ifconfig
ping 192.168.0.1
ping 8.8.8.8
tracert 8.8.8.8

tracert 8.8.8.8
tracepath 8.8.8.8
ping 8.8.8.8
su
cd Downloads/Executables/df_linux/
ls
./df
exit
make
make install
sudo make install
exit
ls
mv
mc
exit
ncmpcpp
poweroff
exit
screen -r
exit
mc
exit
man grep
exit
cd Documents/WiiDesktopVR/
ls
grep -r -i "affine"
grep -r -i "warper"
grep -i "warper"
grep -r -i "wiiFish"
grep -r -i "solve"
ls
grep -r -i "cross"
grep -r -i "compile"
exit
cd Downloads/
ls
cd ../Documents/WiiDesktopVR/
ls
vim Warper.cs 
exi5
exit
mc
vim AffineTransformSolver.cs CrosshairCursor.cs Warper.cs WiiDesktopVR.cs 
mc
exit
ifconfig
man wifi-menu
wifi-menu --help
wifi-menu wlp8s0
sudo wifi-menu wlp8s0
exit
mc
exit
mc
exit
date
history | grep date
date --date='23:00 last tue'
date --date='23:00 today'
date --date='23:00 tommorow'
date --date='23:00 tomorrow'
man date
date --date='TZ="America/Los_Angeles" 09:00 next Fri'
date --date='TZ="London" 09:00 next Fri'
man date
date --date='Sun, 29 Feb 2004 16:21:42 -0800'
date --date='2013-04-25 23:00:04.4325'
exit
ncmpcpp
reboot
ls -la /etc/localtime 
cat /etc/localtime 
exit
mc
exit
mc
exit
sdfs
cd /media/Stuff/University/L.Eclipse.Indigo/LD/
mkdir LD
cd LD
git clone git@github.com:LD-26-IO-Team/ld26.git
git add ld26/*
cd ..
ls
cd LD
ls -la
cd ld26/
ls
ls -la
git add ld26/*
git commit
git pull
git push
git rm ld26/src/io/github/ldears/ld26/map/TileMap.java
git rm ld26/src/io/github/ldears/ld26/map/ObjectParam.java
git commit
git push
git pull
cmc
mc
git commit
git add ld26/*
git pull
git commit
git pull
git commit
git add ld26/*
git rm ld26/src/io/github/ldears/ld26/map/Containter.java
git commit
git pull
git push
git commit
git add ld26/*
git commit
git pull
git commit
git add ld26/*
git commit
git push
mc
git pull
mc
history | grep git
cd /media/Stuff/University/L.Eclipse.Indigo/Eclipse.Indigo/
./eclipse
ncmpcpp
cd /media/Stuff/University/L.Eclipse.Indigo/
leclipse 
mc
exit
ncmpcpp
exit
git pull
git commit
git add ld26/*
git commit
git pull
git add ld26/*
git commit
git pull
git add ld26/*
git commit
git push
git add ld26/*
git commit
git push
git pull
mc
git pull
git add ld26/*
git commit
git pull
git push
git pull
git add ld26/*
git commit
git pull
git push
git pull
git add ld26/*
git commit
git push
git commit
git add ld26/*
git commit
git push
git add ld26/*
git commit
git push
git add ld26/*
git commit
git push
git add ld26/*
git commit
git push
git pull
mc
git pull
git add ld26 
git commit
git push
git pull
exit
mc
exit
exit
sudo pkill X
leclipse 
exit
leclipse 
ping google.com
ping 8.8.8.8
exit
git add ld26 
git commit
git push
git pull
git push
git add ld26 
git commit
git push
git pull
git add ld26 
git commit
git push
git pull
git add ld26 
git commit
git psuh
git push
git add
git status
git commit
git add ld26/
git commit
git push
git pull
git push
mc
git add ld26 
git commit
git pull
git push
git add ld26 
git commit
git push
git pull
git add ld26 
git commit
git push
git add ld26 
git commit
git push
git add ld26 
git commit
git push
ping 8.8.8.8
libreoffice charackteristic.docx 
cd /media/Stuff/University/L.Eclipse.Indigo/LD/LD/ld26/
ls
git pull
mc
exit
zip practice.zip chars.pdf report.pdf title.pdf 
dropbox publink practice.zip 
dropbox puburl practice.zip 
dropbox running
dropbox stop
killall dropbox
dropbox start
exit
sudo mount /dev/sdc1 /media/USB/
mc
sudo umount /media/USB 
mc
exit
git pull
git add ld26 
git commit
git push
mc
exit
leclipse 
exit
screen -r
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
mc
exit
ifconfig
ping 8.8.8.8
traceroute 8.8.8.8
tracepath 8.8.8.8
ifconfig
ping 192.168.1.1
ping 8.8.8.8
mc
exit
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
leclipse 
exit
ls /media/Stuff/University/L.Eclipse.Indigo/LD/LD/ld26/ld26/src/io/github/ldears/ld26/*
ls /media/Stuff/University/L.Eclipse.Indigo/LD/LD/ld26/ld26/src/io/github/ldears/ld26/* | wc
exit
screen r
screen -r
exit
cat << EOF > LD.url
http://www.ludumdare.com/compo/ludum-dare-26/?action=preview&uid=9598
EOF

mc
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
cd ..
cd bin/
java MoveToFront - < ABRA
cat << EOF > abra
ABRACADABRA!
EOF

java MoveToFront - < abra 
exit
cd /media/Stuff/University/L.Eclipse.Indigo/PrincetonSpace/Percolation/src/
ls
zip burrows.zip CircularSuffixArray.java BurrowsWheeler.java 
zip burrows.zip CircularSuffixArray.java BurrowsWheeler.java MoveToFront.java 
exit
leclipse 
exit
ncmpcpp
exit
mc
exit
reboot
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
mc
exit
python
EXIT
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
screen -r
mc
screen -r
exit
mc
exit
mc
exit
ncmpcpp
alsamixer 
exit
alsamixer 
ncmpcpp
exit
reboot
ncmpcpp
exit
killall xautolock 
ps ax | gre xau
ps ax | grep xau
exit
vlc VTS_01_0.VOB VTS_01_1.VOB VTS_01_2.VOB VTS_01_3.VOB VTS_01_4.VOB VTS_01_5.VOB 
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
sudo systemctl status rtorrent@wizzardich.service 
rtorrent 
ps ax | grep rto
ps ax | grep screen
mc
sudo systemctl restart rtorrent@wizzardich.service 
sudo systemctl status rtorrent@wizzardich.service 
screen -r
date
history | grep date
date --date="next Fri"
exit
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
exit
ping google.com
ping 8.8.8.8
ping 192.168.1.1
ping 8.8.8.8
ifconfig 
exit
ncmpcpp
killall xautolock
ps ax | grep xaut
mc
exit
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
mc
exit
conky 
exit
man tracepath
exit
time :%M%p
exit
man shopt
shopt
exit
vim wallchan.conf 
man bash
resvim .bash_aliases 
vim .bash_aliases 
telnet 172.23.0.0
ssh 172.23.0.0
ping 77.47.176.212
ping 77.47.176.213
ping 77.47.176.211
tracepath 77.47.176.211
exit
ping 8.8.8.8
exit
mc
. .bashrc 
restart rtorrent@wizzardich
sudo restart rtorrent@wizzardich
man complete 
complete 
complete | grep sys
complete | grep ctl
complete -h
complete -H
man bash
man conky 
exit
nm-applet 
xeit
ifconfig 
ping 8.8.8.8
history | grep ping
ifconfig 
ping 8.8.8.8
nslookup 
ip addr
nslookup 
ping 8.8.8.8
ifconfig 
ping 10.112.12.1
ping 10.112.12.254
ping 10.7.1.23
ifconfig 
sudo ifconfig enp7s0 down
sudo ifconfig enp7s0 up
ifconfig 
ping 192.168.1.1
sudo ifconfig enp7s0 down
sudo ifconfig enp7s0 up
ifconfig 
ping 8.8.8.8
reboot
screen -r
sudo restart rtorrent@wizzardich
screen -r
mc
exit
wifi-menu 
sudo wifi-menu 
ifconfig 
sudo ifconfig enp7s0 down
sudo ifconfig enp7s0 up
ifconfig 
sudo modprobe wl
man hcitool 
hciconfig 
hcitool 
hcitool dev
exit
gnome-control-center
hcitool 
history | grep r
rpcinfo 
cd Downloads/Builds/wireless
ls
cd ..
cd wireless-bcm43142-dkms/
ls
sudo pacman -R wireless-bcm43142-dkms 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
sudo pacman -Syu
exit
ps ax | grep rto
kill -9 7487
kill -9 323
kill -9 322
ps ax | grep rto
exit
screen -r
sudo restart rtorrent@wizzardich
screen -r
exit
mc
exit
wallchan 
exit
mc
exit
whereis feh
exit
vim .config/awesome/rc.lua
awesome -k
cd .config/awesome/
cat << EOF > volume.lua
local wibox = require("wibox")
local awful = require("awful")
 
volume_widget = wibox.widget.textbox()
volume_widget:set_align("right")
 
function update_volume(widget)
   local fd = io.popen("amixer sget Master")
   local status = fd:read("*all")
   fd:close()
 
   -- local volume = tonumber(string.match(status, "(%d?%d?%d)%%")) / 100
   local volume = string.match(status, "(%d?%d?%d)%%")
   volume = string.format("% 3d", volume)
 
   status = string.match(status, "%[(o[^%]]*)%]")

   if string.find(status, "on", 1, true) then
       -- For the volume numbers
       volume = volume .. "%"
   else
       -- For the mute button
       volume = volume .. "M"
       
   end
   widget:set_markup(volume)
end
 
update_volume(volume_widget)
 
mytimer = timer({ timeout = 0.2 })
mytimer:connect_signal("timeout", function () update_volume(volume_widget) end)
mytimer:start()
EOF

vim rc.lua
awesome -k
vim rc.lua
awesome -k
xset -b
vim ~/.xinitrc 
whatis this?
wallchan 
feh --bg-center /home/wizzardich/wall/Categories/People/big_7868aeec2d08acdfd87f59d874e150cb00b41c31.png
feh --bg-scale /home/wizzardich/wall/Categories/People/big_7868aeec2d08acdfd87f59d874e150cb00b41c31.png
whereis wallcahn
whereis wallchan
vim /usr/bin/wallchan 
wallchan 
exit
cd .config/awesome/
vim rc.lua
man awesome
awesome -k
awe
xlock -resources
gnome-control-center
xlock -font=Bitstream-Vera-Mono
xlock -font Bitstream-Vera-Mono
sudo pacman -S gnome-settings-daemon-compat 
gnome-font-viewer 
sudo pacman -S xorg-xfontsel 
xfontsel 
exit
xlock -font -misc-fixed-*-*-*-*-*-*-*-*-*-*-*-*
xlock -font -misc-fixed-*-*-*-*-*-*-*-*-*-70-*-*
xlock -font -misc-fixed-*-*-*-*-*-*-75-75-*-70-*-*
xlock -font -misc-fixed-bold-r-*-*-13-120-75-75-*-70-iso8859-1
xlock -font -*-clean-*-*-*-*-*-*-*-*-*-*-*-*
xlockmore -font -*-clean-*-*-*-*-*-*-*-*-*-*-*-*
xlock -font
xlock -font -misc-fixed-bold-r-*-*-13-120-75-75-*-70-iso8859-1 -mode marquee
xlock -messagefont -misc-fixed-bold-r-*-*-13-120-75-75-*-70-iso8859-1 -mode marquee
xlock -planfont -misc-fixed-bold-r-*-*-13-120-75-75-*-70-iso8859-1 -messagefont -misc-fixed-bold-r-*-*-13-120-75-75-*-70-iso8859-1 -mode marquee
gnome-screensaver
man gnome-screensaver
exit
alsamixer 
exit
xterm
gnome-terminal 
exiy
exit
cd Downloads/Builds/wireless-bcm43142-dkms/
pacman -R wireless-bcm43142-dkms 
sudo pacman -R wireless-bcm43142-dkms 
sudo pacman -U wireless-bcm43142-dkms-6.20.155.1-5-x86_64.pkg.tar.xz 
exit
man xlock
xfontsel 
exit
killall xautolock 
xlock -font -misc-*-*-*-*-*-*-*-*-*-*-*-*-*
xlock -font -misc-*-*-*-*-*-*-*-*-*-*-*-*-* -mode marquee
xlock -font -misc-*-*-*-*-*-*-*-*-*-*-*-*-* -mode nose
whereis locker
vim /usr/bin/locker 
vim /usr/bin/lock
lock
vim /usr/bin/lock
sudo vim /usr/bin/lock
lock
sudo vim /usr/bin/lock
lock
exit
mc
exit
mc
exit
screen -r
sudo restart rtorrent@wizzardich
screen -r
exit
mc
exit
mc
exit
sudo pacman -S terminator terminus-font 
terminator
exit
wallchan 
exit
ncmpcpp
exit
ncmpcpp
exit
vlc VTS_01_1.VOB VTS_01_2.VOB VTS_01_3.VOB VTS_01_4.VOB VTS_01_5.VOB 
sudo pacman -S slock
man slock
slock
slock --help
slock -v
mc
exit
screen -r
exit
screen -r
sudo restart rtorrent@wizzardich
screen -r
mc
exit
who
whatis this?
whereis this?
exit
sdfsd
exit
screen -r
sudo restart rtorrent@wizzardich
screen -r
killall rtorrent
ps ax | grep rtorre
kill -9 31627
ps ax | grep rtorre
sudo start rtorrent
sudo start rtorrent@wizzardich
screen -r
exit
mc
exit
ncmpcpp
sudo pacman -Syu
ncmpcpp
exit
ncmpcpp
exit
screen -r
exit
sudo mount /dev/sda7 /mnt
mc
exit
killall xautolock
ps ax | grep xau
exit
history | xset
history | xset
history | grep xset
xset -b
exit
wget -c -O /media/Stuff/Downs/Movies/Serenity.mkv http://www.ex.ua/load/12130378
mc
exit
mc
exit
mc
exit
mc
exit
ncmpcpp
exit
screen -r
sudo restart rtorrent@wizzardich
screen -r
mc
screen -r
sudo restart rtorrent@wizzardich
screen -r
complete
complete | grep systemc
complete | grep system
complete | grep syste
complete | grep sys
complete -p systemctl
complete -p systemctl restart
pacman -S zsh
sudo pacman -S zsh
zsh
exit
dropbox stop
killall dropbox
dropbox start
exit
cd /media/Stuff/
exit
zsh
exit
ncmpcpp
exit
vim mc.ext 
man xdg-open
./misc.sh
gnome-control-center
xdg-open Firefly\ \[14\]\ Objects\ In\ Space.avi 
ls *.list
ls -la
ls -la | grep list
echo $XDG_DATA_HOME
screen -r
sudo systemctl restart rtorrent@wizzardich.service 
screen -r
sudo mc
screen -r
mc
exit
./agetty
convert 0e18e3840ae6.jpg : -scale 1x1\! -format '%[pixel:s]' info:-
convert 0e18e3840ae6.jpg: -scale 1x1\! -format '%[pixel:s]' info:-
OD
fc-cache -fv
chmod +x mpd_album.py 
./mpd_album.py 
python2 setup.py 
python2 setup.py install
sudo python2 setup.py install
./mpd_album.py 
./rc.lua
vim rc.lua 
awesome -k
vim rc.lua 
