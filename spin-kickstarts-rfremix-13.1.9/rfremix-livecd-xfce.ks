# rfremix-livecd-xfce.ks
#
# Description:
# - RFRemix Live Spin with the light-weight XFCE Desktop Environment
#
# Maintainer(s):
# - Rahul Sundaram    <sundaram@fedoraproject.org>
# - Christoph Wickert <chris@christoph-wickert.de>
# - Kevin Fenzi       <kevin@tummy.com>
# - Arkady L. Shane   <ashejn@yandex-team.ru>

%include rfremix-live-base.ks

%packages

# remove imsettings-xfce for now until it gets re-written
-imsettings-xfce

firefox
NetworkManager-gnome
NetworkManager-openconnect
NetworkManager-openvpn
NetworkManager-pptp
NetworkManager-vpnc
nss-mdns
claws-mail
gtk-nodoka-engine

# we don't include @office so that we don't get OOo.  but some nice bits
abiword
desktop-backgrounds-compat
evince-djvu
-evince-dvi
galculator
gimp
gnome-screensaver
gnumeric
inkscape
-qutim*

# development
geany

# More Desktop stuff
alsa-plugins-pulseaudio
asunder
brasero
cups-pdf
deluge
easytag
exaile
-flash-plugin*
florence
gftp
gnome-bluetooth
gnome-power-manager
gstreamer-plugins-ugly
gparted
libdvdcss
liferea
pavucontrol
pidgin
ristretto
seahorse
stardict
totem-mozplugin
xdg-user-dirs
xine-lib-extras-freeworld

# Command line
ntfs-3g
powertop

# xfce packages
@xfce-desktop
gtk-xfce-engine
orage
thunar-volman
xarchiver
xfce4-battery-plugin
xfce4-clipman-plugin
xfce4-cpugraph-plugin
xfce4-datetime-plugin
xfce4-dict-plugin
xfce4-diskperf-plugin
xfce4-genmon-plugin
#redundant with verve plugin
#xfce4-minicmd-plugin
xfce4-mount-plugin
xfce4-netload-plugin
xfce4-notes-plugin
xfce4-places-plugin
xfce4-quicklauncher-plugin
xfce4-screenshooter-plugin
xfce4-sensors-plugin
xfce4-systemload-plugin
xfce4-taskmanager
xfce4-volstatus-icon
xfce4-verve-plugin
# We need xkb plugin
xfce4-xkb-plugin
# We use NetworkManager-gnome. So this is redundant
xfce4-weather-plugin
xfce4-websearch-plugin
# this one a compatibility layer for GNOME applets and depends on it
#xfce4-xfapplet-plugin
xfwm4-themes

# dictionaries are big
#-aspell-*
#-man-pages-*

# more fun with space saving
-gimp-help


# save some space
-autofs
-nss_db
ssmtp
-acpid
# system-config-printer does printer management better
# xfprint has now been made as optional in comps.
system-config-printer

-java-1.6.0-openjdk*
%end

%post
# xfce configuration

# create /etc/sysconfig/desktop (needed for installation)

#cat > /etc/sysconfig/desktop <<EOF
#PREFERRED=/usr/bin/startxfce4
#EOF

cat >> /etc/rc.d/init.d/livesys << EOF

# disable screensaver locking
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/gnome-screensaver/lock_enabled false >/dev/null
#gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/bluetooth-manager/show_icon false
# set up timed auto-login for after 60 seconds
cat >> /etc/gdm/custom.conf << FOE
[daemon]
TimedLoginEnable=true
TimedLogin=liveuser
TimedLoginDelay=20
FOE

# turn off rfremixconf script
chkconfig --level 345 rfremixconf off 2>/dev/null

EOF

%end

