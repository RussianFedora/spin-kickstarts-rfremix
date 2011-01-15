Summary:    Kickstart files and templates for creating your own RFRemix Spins
Name:       spin-kickstarts-rfremix
Version:    13.1.9
Release:    1%{?dist}

License:    GPLv2+
Group:      Applications/System
URL:        http://russianfedora.ru
Source0:    %{name}-%{version}.tar.bz2
BuildRoot:  %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

BuildArch:  noarch

Obsoletes:  spin-kickstarts-russianfedoraremix
Obsoletes:  spin-kickstarts-russianfedora


%description
A number of kickstarts you can use to create customized (Russian Fedora) Spins


%prep
%setup -q


%build


%install
rm -rf $RPM_BUILD_ROOT

install -m 755 -dD $RPM_BUILD_ROOT%{_datadir}/spin-kickstarts/
install -m 644 *.ks $RPM_BUILD_ROOT%{_datadir}/spin-kickstarts/


%clean
rm -rf $RPM_BUILD_ROOT


%files
%defattr(-,root,root,-)
%doc COPYING AUTHORS ChangeLog
%dir %{_datadir}/spin-kickstarts/
%{_datadir}/spin-kickstarts/rfremix*.ks


%changelog
* Tue Aug 31 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.9-1
- as rh#626780 fixed drop patches repo from urls

* Mon Aug 30 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.8-1
- skip fedora-updates Network Manager and add patches repo
- drop openoffice Math and Draw from LXDE Live to save space
- exclude duplicate packages

* Mon Aug 30 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.7-1
- exclude flash and fedora-release-notes from live's- 

* Mon Aug 30 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.6-1
- import all RPM-GPG-KEYs on lives (rf#176)
- added precompiled modules for wireless cards on lives (rf#177)
- 20 seconds for autologin instead of 10 (rf#183)

* Tue Aug 24 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.5-1
- exclude blueman from KDE DVD (rf#165)
- added @office to KDE DVD (rf#164)
- stop rfremixconf on Lives

* Thu Aug 19 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.4-1
- exclude generic packages from fedora repos

* Thu Aug 19 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.3-1
- added avidemux-plugins

* Tue May 25 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.2-1
- exclude all kernel modules with version 2.6.33.3-85

* Mon May 24 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.1-1
- exclude kernel from russianfedora repo
- added vim-enhanced to my kickstart
- sync rfremix-live-base.ks with fedora-live-base.ks


* Wed May 19 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.1.0-1
- remove some unexistent font packages
- bump pre release kickstart file to Fedora 14
- sync rawhide and release kickstart files with pre release
- added my kickstart file with tigro repo support
- no java in lxde
- use claws mail instead of thunderbird in xfce and lxde
- final release

* Thu May 13 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.5-1
- disable updates-testing repo

* Wed May 12 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.4-1
- drop compiz from livecds
- added kmods on install media
- optimaze livecd size
- added qmmp on KDE Live and install media

* Fri Apr  9 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.3-1
- drop some languages what is absent in anaconda
- added updates and updates-testing for pre ks

* Wed Mar 24 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.2-1
- remove some packages and groups

* Wed Mar 24 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.1-1
- clean up pre-rawhide package list

* Tue Mar 16 2010 Arkady L. Shane <ashejn@yandex-team.ru> - 13.0.0-1
- bump to 13 release
- change urls

* Fri Nov 13 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.12-1
- exclude PAE kernel and modules in lives

* Fri Nov 13 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.11-1
- friday 13; bump to 12.0.11

* Thu Nov 12 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.10-1
- bump to 12.0.10

* Sun Nov  8 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.9-1
- update install release ks file

* Sun Nov  8 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.8-1
- added kdeedu and htop

* Sun Nov  8 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.7-1
- added @window-managers in install kses

* Mon Nov  2 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.6-1
- update packages again

* Mon Nov  2 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.5-1
- added some Obsoletes
- update packages

* Wed Oct 28 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.4-1
- update release install file
- added new package file

* Wed Oct 28 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.3-1
- update rfremix install rawhide ks

* Mon Oct 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.2-1
- new release

* Fri Oct  2 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.1-2
- and in release ks file too

* Fri Oct  2 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.1-1
- added new languages in rawhide kickstart

* Fri Sep 18 2009 Arkady L. Shane <ashejn@yandex-team.ru> - 12.0.0-1
- adopt for Fedora 12 development
- bump release for corresponding with Fedora release
- rename package and kickstarts to something-rfremix

* Mon Jun  8 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.11-2
- update to 0.8.11

* Thu Jun  4 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.10-1
- update to 0.8.10

* Thu Jun  4 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.9-1
- update to 0.8.9
- rename to spin-kickstarts-russianfedoraremix

* Wed Jun  3 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.8-1
- update to 0.8.8

* Mon Jun  1 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.7-1
- update to 0.8.7

* Mon Jun  1 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.6-1
- update to 0.8.6

* Thu May 28 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.5-1
- update to 0.8.5

* Tue May 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.4-1
- update to 0.8.4

* Tue May 19 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.3-1
- update to 0.8.3

* Tue May 19 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.2-1
- update to 0.8.2

* Tue May 19 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.1-1
- update to 0.8.1

* Mon May 18 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.8.0-1
- update to 0.8.0

* Thu May 14 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.17-1
- update to 0.7.17

* Fri Apr 24 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.16-1
- update to 0.7.16

* Fri Apr 24 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.15-1
- update to 0.7.15

* Mon Apr 20 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.14-1
- update to 0.7.14

* Sun Apr 19 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.13-1
- update to 0.7.13

* Mon Apr 13 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.12-1
- update to 0.7.12

* Mon Apr 13 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.11-1
- update to 0.7.11

* Sun Apr 12 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.10-1
- update to 0.7.10

* Thu Apr  9 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.9-1
- update to 0.7.9
- remove spin-kickstarts dependency
- install all in standart spin-kickstart directory

* Wed Apr  8 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.8-1
- update to 0.7.8

* Tue Apr  7 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.7-1
- update to 0.7.7

* Mon Apr  6 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.6-1
- update to 0.7.6

* Mon Apr  6 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.5-1
- update to 0.7.5

* Wed Apr  1 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.4-1
- update to 0.7.4

* Thu Mar 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.3-1
- update to 0.7.3

* Thu Mar 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.2-1
- update to 0.7.2

* Thu Mar 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7.1-1
- update to 0.7.1

* Thu Mar 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.7-1
- update to 0.7

* Fri Mar 13 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.6.1-1
- update to 0.6.1

* Tue Mar 12 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.6-1
- update to 0.6

* Tue Feb 24 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.5-1
- update to 0.5

* Wed Feb 18 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.4-1
- update to 0.4

* Wed Feb 18 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.3-1
- update to 0.3

* Fri Feb  6 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.2-1
- update to 0.2

* Mon Jan 26 2009 Arkady L. Shane <ashejn@yandex-team.ru> 0.1-1
- initial build
