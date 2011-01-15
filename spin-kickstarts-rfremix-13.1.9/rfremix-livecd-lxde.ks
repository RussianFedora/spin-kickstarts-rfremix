# fedora-livecd-lxde.ks
#
# Description:
# - RFRemix Live Spin with the light-weight LXDE Desktop Environment
#
# Maintainer(s):
# - Christoph Wickert <cwickert@fedoraproject.org>
# - Arkady L. Shane   <ashejn@yandex-team.ru>

%include rfremix-live-base.ks

%packages
# LXDE desktop
@lxde-desktop
lxlauncher
obconf
parcellite
slim
blueman

# internet
midori
claws-mail
lostirc
transmission
gftp
liferea
pidgin

# office
openoffice.org-writer
openoffice.org-calc
openoffice.org-impress

# graphics
epdfview
mtpaint

# audio & video
pavucontrol
lxmusic
asunder
totem
totem-mozplugin
gstreamer-plugins-ugly
-flash-plugin*

# I'm looking for something smaller than
gnomebaker

# development
#geany

# More Desktop stuff
xdg-user-dirs
alsa-plugins-pulseaudio
NetworkManager-gnome
galculator
xpad
cups-pdf

# use yumex instead of gnome-packagekit
#-gnome-packagekit
#yumex

# Command line
powertop
wget
yum-utils

# save some space
-nss_db
-sendmail
ssmtp
-acpid

%end

%post
# LXDE and SLiM configuration

# create /etc/sysconfig/desktop (needed for installation)

cat >> /etc/sysconfig/desktop <<EOF
PREFERRED=/usr/bin/startlxde
DISPLAYMANAGER=/usr/bin/slim-dynwm
EOF

cat >> /etc/rc.d/init.d/livesys << EOF
chown -R liveuser:liveuser /home/liveuser
restorecon -R /home/liveuser

# set up timed auto-login for after 60 seconds
cat >> /etc/slim.conf << FOE
auto_login	yes
default_user	liveuser
FOE

EOF

%post

%end

