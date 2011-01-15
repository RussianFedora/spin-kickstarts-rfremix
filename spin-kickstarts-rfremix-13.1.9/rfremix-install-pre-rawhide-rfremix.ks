# Kickstart file for composing the "Russian Fedora"
# Maintained by the Fedora Release Engineering team:
# https://fedoraproject.org/wiki/ReleaseEngineering
# mailto:rel-eng@lists.fedoraproject.org

# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 695 (megs), CD size.
# Listed below is the size of a DVD if you wanted to split higher.
#part iso --size=4998

%include rfremix-packages.ks

# Add the repos you wish to use to compose here.  At least one of them needs group data.
repo --name=russianfedora --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-$basearch --exclude kernel*debug* --exclude kernel-kdump* --exclude syslog-ng --exclude java-1.5.0-gcj-devel --exclude astronomy-bookmarks --exclude generic* --exclude java-1.5.0-gcj-javadoc --exclude GConf2-dbus* --exclude bluez-gnome --exclude=man-pages-ru
repo --name=russianfedora-updates --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-updates-$basearch --exclude kernel*debug* --exclude kernel-kdump* --exclude syslog-ng --exclude java-1.5.0-gcj-devel --exclude astronomy-bookmarks --exclude generic* --exclude java-1.5.0-gcj-javadoc --exclude GConf2-dbus* --exclude bluez-gnome --exclude=man-pages-ru
repo --name=russianfedora-updates-testing --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-updates-testing-$basearch --exclude kernel*debug* --exclude kernel-kdump* --exclude syslog-ng --exclude java-1.5.0-gcj-devel --exclude astronomy-bookmarks --exclude generic* --exclude java-1.5.0-gcj-javadoc --exclude GConf2-dbus* --exclude bluez-gnome --exclude=man-pages-ru
repo --name=rpmfusion-free --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-rpmfusion-free-$basearch
repo --name=rpmfusion-nonfree --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-rpmfusion-nonfree-$basearch
repo --name=russianfedora-free --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-free-$basearch
repo --name=russianfedora-nonfree --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-nonfree-$basearch
repo --name=russianfedora-fixes --mirrorlist=http://russianfedora.tigro.info/development/14/.mirrorlist-russianfedora-fixes-$basearch

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)
%packages --default
# core
tcsh
kernel*
dracut-*
# Desktop Packages
@kde-desktop
@lxde-desktop
@moblin-desktop
kdewebdev
echo-icon-theme
tracker
nspluginwrapper
liferea
esc
thunderbird
@dial-up
# apps
#@authoring-and-publishing
@eclipse
joe
emacs
k3b
@system-tools
mc
wireshark-gnome
# Devel packages
@development-libs
@development-tools
@fedora-packager
@gnome-software-development
@kde-software-development
@web-development
@x-software-development
# Server packages
@dns-server
@ftp-server
@mail-server
@mysql
@network-server
@news-server
@server-cfg
@smb-server
@sql-server
@web-server
# Keep dap off the install media, makes Eng & Sci show up
-dap-server-cgi
# Virt group
@virtualization --optional
# filesystem stuff
reiserfs-utils
xfsprogs
jfsutils
# Languages
@afrikaans-support
@arabic-support
@armenian-support
@assamese-support
@belarusian-support
@brazilian-support
@british-support
@bulgarian-support
@catalan-support
@chinese-support
@croatian-support
@czech-support
@danish-support
@dutch-support
@estonian-support
@finnish-support
@french-support
@georgian-support
@german-support
@greek-support
@gujarati-support
@hebrew-support
@hindi-support
@hungarian-support
@icelandic-support
@inuktitut-support
@italian-support
@japanese-support
@kannada-support
@korean-support
@latvian-support
@lithuanian-support
@macedonian-support
@malay-support
@malayalam-support
@marathi-support
@nepali-support
@northern-sotho-support
@norwegian-support
@oriya-support
@persian-support
@polish-support
@portuguese-support
@punjabi-support
@romanian-support
@russian-support
@serbian-support
@sinhala-support
@slovak-support
@slovenian-support
@spanish-support
@swedish-support
@tamil-support
@telugu-support
@turkish-support
@ukrainian-support
@vietnamese-support
@welsh-support
@zulu-support
# Compose Needs
memtest86+
tigervnc-server
# Size removals
-gimp-help
-java-1.6.0-openjdk-src
-xorg-x11-docs
-kernel-doc
-java-1.5.0-gcj-src
-java-1.5.0-gcj-devel
-libgcj-src
-*javadoc*
-frysk
-*gcj*

%end
