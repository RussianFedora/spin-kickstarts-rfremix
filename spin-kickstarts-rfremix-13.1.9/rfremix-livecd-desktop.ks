# Maintained by the Fedora Desktop SIG:
# http://fedoraproject.org/wiki/SIGs/Desktop
# mailto:fedora-desktop-list@redhat.com

%include rfremix-live-base.ks

%packages
@games
@graphical-internet
@graphics
@sound-and-video
@gnome-desktop
nss-mdns
NetworkManager-vpnc
NetworkManager-openvpn
NetworkManager-pptp
NetworkManager-openconnect
# we don't include @office so that we don't get OOo.  but some nice bits
abiword
gnumeric
-gimp*
gthumb
evince-djvu
-evince-dvi

# new programs
easytag
-stardict
brasero
-flash-plugin*
-liferea
gparted
-qutim*

# multimedia
gstreamer-plugins-ugly
gstreamer-plugins-bad
gstreamer-plugins-bad-free
gstreamer-plugins-bad-nonfree
gstreamer-ffmpeg
-xine-lib
-xine-lib-extras-freeworld
libdvdcss
-vlc
-mplayer

# dictionaries are big
-man-pages-*
-words

# save some space
-gnome-user-docs
-gimp-data-extras
-gimp-help
-gimp-help-browser
-evolution-help
-gnome-games
-gnome-games-help
-nss_db
-vino
-isdn4k-utils
-dasher
-*amule*
-foo2*

-gok
-orca
-festival
-gnome-speech
-festvox-slt-arctic-hts

# not needed for gnome
-acpid

# these pull in excessive dependencies
-tomboy
-f-spot

# Russian Fedora 
nautilus-sound-converter
nautilus-image-converter
nautilus-sendto
empathy
-pidgin
-java-1.6.0-openjdk*

# Opera contains some 32bit libraries, so
# it is not possible to add it into 64bit
# livecd
-opera

# no compiz
-compiz
-compiz-bcop
-compizconfig-backend-gconf
-compizconfig-backend-kconfig4
-compizconfig-python
-compiz-fusion
-compiz-fusion-extras
-compiz-fusion-extras-gnome
-compiz-fusion-gnome
-compiz-fusion-unsupported
-compiz-fusion-unsupported-gnome
-compiz-gnome
-compiz-kde
-compiz-manager
-libcompizconfig
-fusion-icon
-fusion-icon-gtk
-fusion-icon-qt
-ccsm

%end

%post
# apply new gnome configs
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/nautilus/preferences/always_use_browser true
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/gnome-terminal/global/use_menu_accelerators false
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t string /desktop/gnome/interface/toolbar_style "both-horiz"
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t list --list-type=string /apps/gedit-2/preferences/encodings/auto_detected "[UTF-8,CURRENT,WINDOWS-1251,KOI8R,ISO-8859-5]"
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /desktop/gnome/interface/menus_have_icons true
#gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/bluetooth-manager/show_icon false

# Do not show gnome-packagekit in KDE
sed -i '/Categories/ a NotShowIn=KDE;' /etc/xdg/autostart/gpk-update-icon.desktop

cat >> /etc/rc.d/init.d/livesys << EOF
# disable screensaver locking
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/gnome-screensaver/lock_enabled false >/dev/null
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /desktop/gnome/lockdown/disable_lock_screen true >/dev/null
# set up timed auto-login for after 60 seconds
cat >> /etc/gdm/custom.conf << FOE
[daemon]
TimedLoginEnable=true
TimedLogin=liveuser
TimedLoginDelay=20
FOE

# Show harddisk install on the desktop
sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop
chown -R liveuser.liveuser /home/liveuser/Desktop
chmod a+x /home/liveuser/Desktop/liveinst.desktop

# turn off rfremixconf script
chkconfig --level 345 rfremixconf off 2>/dev/null

EOF

%end
