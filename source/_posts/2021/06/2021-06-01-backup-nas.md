---
---
layout: post
title: "Backup - Backup - NAS - Cloud?"
date: 2021-06-01 21:23:17
comments: true
categories: [Programming,Infrastructure]
---
# Overview

## My Backup Journey

I'm doing backup of my data for more than 30+ years now. I started with backups
on [floppy disk][floppy-disk] more accurate on
[5 1/4" floppy disk][floppy-disk-5] (some of you don't even know floppy disc at
all) and moved later on to [3.5" floppy disk][floppy-disk-3]. 

Some time later I started using PKZip to reduce the number of needed floppy
disks. You might ask for the reason? The answer is simple: costs. At that time
those things where not really cheap. Unfortunately I realized that there had
been several issues with this approach. If one disk was not anymore readable (
for whatever reasons) you could get in trouble because you can't read the rest
of the archives at all. Yes there had been some life-savers but not very
practical ones. Even worse if the first disk will fail (contained the directory
of the archives) the full backup would be unreadable. So I discarded that
approach and continued to use plain 3.5" floppy disks for a longer time. The
drawback was that I needed more floppy disks (costs!).

After some time the size of the backup gets bigger and bigger (As usual. You
will fill up every hard drive independent of the size).

So I searched for a different and more convenient way of handling my backups. So
at that time I started to use a tape drive ([QIC][qic] with 80 [MiB][si] and
later 120 [MiB][si] of capacity). 

Over the time as you have already guessed those tapes ran out space as well.

The next step was to switch to [DDS drives][dds]. I began with [DDS-1][dds-1] 
(2 [GiB][si]) and over the time I reached [DDS-3][dds-3] (12 [GiB][si]) and what
should I say the same happened again the capacity was not enough.

So I switched to [LTO][lto] tapes with a capacity of 100 [GiB][si]
on each tape. After some time I calculated the costs for the next step to go
on [LTO-3][lto] (I left out [LTO-2][lto] for future-proof) which would have
cost me about 1200 € for only the tape drive. Apart from that you have to add
the costs for the tapes on top of it. Also based on the recommendation you have
to remove tapes after a usage of 20-30 times(ca. each 1.5 year based on
deterioration; The tape material will be stretched more and more over the time).

A simple calculation showed me it would be cheaper to use USB hard drives
instead with way more capacity. So I changed to use USB drives. At the
[end of 2014][twitter-lto] I completely dropped the usage of LTO tape drives.
After some time I changed over to [SSD][ssd]'s instead which are faster than the
spinning disks which leads us to the presence.

## Are Backups Really Necessary?
So you might ask why should I do backups? Based on my experience I had several 
disk crashes etc. (If I correctly remember there had been 12+ hard drive 
crashes on my personal systems) and always my backups have saved me. Not to 
mention the times when I accidentally deleted some important files/directories
etc.

Also in my professional career I have observed several times of disk failures
(production errors of hard drives within a [RAID][raid] 5 setup) many other
things. People simply deleting important file(s)/directories where a backup
saved them. That taught me an important lesson. Even today with cloud etc.
everywhere it is necessary to have a backup of your data.

Doing backup is the same as you use your safety belts in your car. You hope
you will never need them but nevertheless you use them. It's the same with your
backup. You hope you will never need it.

So in the end the need for a backup has not changed over the time only the way 
you could do backups has changed.

This article will describe different ideas and requirements which I have
collected and what I've reached so far.

# Requirements

I have reconsidered the whole parts and decided to change it to a more
convenient and automated way of doing. So what I need is a list of requirements
which describe my needs. This list looks like this:

1. Easy backup of my server.
2. Easy backup of my Mac(s).
3. Support of backing up other server(s) in the future.

So to conclude that I need a central storage on which the server/Mac can do
their backup automatically (without manually changing USB drives or alike). It's
natural that I have to do a backup of the central storage on a different
location. Adding some bullets to the list.

4. Backup the central storage to a local device (USB hard drive?)
5. Backup the central storage to cloud storage
6. The storage size should be easy to enhance.
   This means simply if my storage requirements increase it should
   be easy to fulfil them.

Afterwards I have thought about it more thoroughly and came a cross that I would
neat to use it also as a media server and general storage for my other devices.
This adds supplemental entries to my requirement list:

7. Media Center Support (TVs)
8. Media migration (from DVD/CD => central storage)
   I have to admit we have a lot of CD's and DVD's in the shelf. This would make
   the access those medias much easier via TV?.
9. Support of other devices(optional?)


[comment]: <> (### General)

[comment]: <> (There is a [general approach for backups][backup-terms] which is called the)

[comment]: <> (**3-2-1-Backup-Strategy** &#40;More or less the simplest strategy&#41;.)

[comment]: <> (That means&#40;copied from [Data Backup Options][3-2-1]&#41;)

[comment]: <> ( * **3** – Keep 3 copies of any important file: 1 primary and 2 backups.)

[comment]: <> ( * **2** – Keep the files on 2 different media types to protect against )

[comment]: <> (           different types of hazards.)

[comment]: <> ( * **1** – Store 1 copy offsite &#40;e.g., outside your home or business facility&#41;.)

[comment]: <> (So for **3** it means you should have at least a daily, weekly and monthly)

[comment]: <> (backup. This is called a backup rotation scheme. I just mention this as an)

[comment]: <> (example of it because there are existing a lot of different rotation schemes.)

[comment]: <> (Each of them has its own pros and cons which I do not want to explain here)

[comment]: <> (For **2** it means you should backup your files on two different medias like)

[comment]: <> (CD/DVD/Blue Rays and on a USB drive or alike. )

[comment]: <> (So finally **1** means having at least a single copy off-site which means not in)

[comment]: <> (your home/office maybe at your siblings/parents home instead or in a)

[comment]: <> (bank-locker etc.)

# Tooling

My approach of doing backups over the time was to use tools which are simple. So
using a very foundational tool like [tar][tar] on Linux (Yes I really do.). No
sophisticated Web/UI tools. Using plain command line controlled by linux
`cron`. Easy to use in particular in case of a disaster you have to install only
a basic OS (Linux) which gives you the access to the tools you need. No special
setup tool needed. No special setup tool needed. Maybe you have to install a
newer version, because you can not find the installation media with the version
you have used before. This could result in not being able to read old backups. 
Yes I've been faced with such a situation once (QIC software on a windows box).
Luckily this was long time ago. That's the reason, why I simply use `tar` and 
`cron` for my backups till today (2021 as of writing this article).

On my Mac I use the integrated Time Machine which has it's quirks. Keeping
the SNAPSHOT which done automatically which is consuming a lot of disk space 
just to mention one.

# Medias

I use several sets of external USB hard drives for my backups. Every month, one
set of hard drives goes into a safe deposit box (geographically separated). Four
different sets are in the safe deposit box. A different set will be brought back
and the whole process starts from the beginning. So rotating through the
different sets and after a time I queue in a new set of USB hard discs for
safety reason (Yes USB drives can fail even [SSDs][ssd-failure] can). The same
happens with my Mac backups.

So at the moment I'm working with two hard disk sets for backup each month.
This is becoming more and more cumbersome.

Another issue which gnaws at me is that only every month a backup is going
off-site which I'm no longer comfortable with. Yes you can call me overcautious
or even paranoid.

# Size Consideration
Over the time there came up a lot of questions related to the size of 
central storage? How much storage do I really need?

The current server backup took an average size by 160-170 [GiB][si] each. Yes I
do make full backup's all the time because I don't want to restore first a
number of incremental/differential backups before I could get my whole data
back.

The backup ist distributed between two [SSD][ssd]'s connected to the server.
Each of these [SSD][ssd]'s has a 2 [TB][units] capacity. This gives me roughly
24 days of backup. This will give me theoretically a time span of a month.
Things changed over the time which reduced it to less than 13 days.

The backup of my Mac computer consumes ca. 250 [GiB][units] size. 

So I would calculate the total requirement at about 12 [TiB][si] size which
gives me more than 30 days of storing full backups and enough space for increase
over the time. Further more some storage space for a number of the DVD's as well.

# Network Attached Storage
Based on the requirements for the central storage I realized that 
a [Network Attached Storage(NAS)][nas] could be the right path to go. 
So started to read a lot about [Network Attached Storage(NAS)][nas] and watched 
a lot of videos about using/setting up [NAS][nas] systems.

# General 

What is a [NAS][nas] system? Simply speaking it's a computer with a number of
hard drives attached. Based on the installed software it can support a number of
use cases like a [Samba Share][samba], [NFS share][nfs], [FTP][ftp], 
[SFTP][sftp], [APFS][apfs] or other formats etc.

Based on my research there are a number of choices where you can
buy off the shelf for ca. 270 Euro (with two bays) without hard drives just
to mention a number. The term `two bays` stand for two locations where you cat put
hard drives into it. This means it can have in total two hard drives within the 
NAS system. 

It is important to mentioned that usually you can hot swap them (If it's not
possible do not buy it). This means you are able to change a broken hard disk
without turning off the power of your NAS. Hot swap feature makes it necessary
to use a kind of [RAID/filesystem(ZFS,XFS,Btrfs etc.)][raid].

Based on the number two its possible to have the 2 times 18 TB of capacity
(theoretically). This will be reduced based on which kind of protection level
you like to use. There are large bunch of [RAID/filesystem(ZFS,XFS,Btrfs etc.)][raid].
This will reduce the raw usable capacity. In other words the storage you can 
really use.

Apart from that by increasing the capacity per hard disk the price gets higher
and higher. For example a 4 [TB][units] is about 105 €(0.026 €/GB) while a
18 [TB][units] is about 700 €(0.038 €/GB). Apart from the fact that different
capacities are not really available at the moment. I use the Seagate IronWolf
Internal Hard Drive (also other brands like WD Red NAS HDD can be used as well)
as a reference which are intended for building them into a NAS system. Don't use
desktop disk that could result in problems. NAS drives are stackable etc. while
desktop hard drives are usually not intended for that. Usually those disks
are [SATA][sata] disks with 6 GB/s. All those disks are spinning with 7200 [rpm][rpms].
There other disks which are spinning with 5400 [rpms][rpms]. This depends of course on
brand/price/modell etc.

Before you ask, yes it is possible to use [SSD][ssd] as drives for example
a 4 [TB][units] SSD (Seagate IronWolf 125 SSD 4TB NAS Internal Solid State
Drive) is about 580 € (0.145 €/GB). That would usually reduce the energy cost as
well as the noise with the drawback of lower capacity and with higher
price based to reach the same size. Also PCIe SSDs are possible etc.

You have already recognized there are a lot of options to consider. If you like 
to read about more details take a look in the following list of links (only
excerpts):

* NAS: https://www.pcmag.com/picks/the-best-nas-network-attached-storage-devices
* RAID https://www.pcmag.com/news/raid-levels-explained
* Search on Youtub: https://www.youtube.com/results?search_query=nas+sytem
* Also take a look to which level you can get things like this:
  https://youtu.be/c5PnP5bKz6k (This is not the end!).

Before I buy a whole [NAS][nas] solution off-the-shelf I was considering
to experiment with such a setup to find out how it works or maybe even not
working.

Yes I have to admit I'm a nerd. So I would like to do that on my own to learn
how things are going.



[comment]: <> (I wouldn't call the solution a [NAS][nas] yet. It's just an old hardware with some)
[comment]: <> (hard drives in it. This is just proof of concept.)

## Hardware

So the first step was to find an appropriate testing hardware where I can play
in a minimal setup with the whole thing. Fortunately I have an old PC which is
from 2009 (If I correctly remember) but working fine (of course no high-end
machine from a today perspective) but sufficient for my experiments:

```
[    0.000000] SMBIOS 2.5 present.
[    0.000000] DMI: System manufacturer System Product Name/P5Q, BIOS 1611    11/26/2008
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 2999.732 MHz processor
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] last_pfn = 0xdff70 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: uncachable
...
```
This machine contains two processors: 
```
processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 23
model name	: Intel(R) Core(TM)2 Duo CPU     E8400  @ 3.00GHz
stepping	: 10
microcode	: 0xa0b
cpu MHz		: 2024.232
cache size	: 6144 KB
...
```
It has 4 GiB RAM and I have a spare 250 GiB SSD for installing the 
OS on it.

So the SSD for the OS:
```
$ smartctl -a /dev/..
Model Family:     Samsung based SSDs
Device Model:     Samsung SSD 850 EVO 250GB
Serial Number:    ***********
LU WWN Device Id: 5 002538 d4001202a
Firmware Version: EMT01B6Q
User Capacity:    250,059,350,016 bytes [250 GB]
Sector Size:      512 bytes logical/physical
Rotation Rate:    Solid State Device
Device is:        In smartctl database [for details use: -P show]
ATA Version is:   ACS-2, ATA8-ACS T13/1699-D revision 4c
SATA Version is:  SATA 3.1, 6.0 Gb/s (current: 3.0 Gb/s)
..
```
Kindly the board has 6 SATA connectors but unfortunately only [SATA 2.x][sata]
(I suppose it's 2.0, but I'm not 100% sure about it, but in the end it does not 
matter). This limits the speed to 3.0 Gb/s (theoretically). This is 
sufficient for my tests.

So for a more real life like testing I bought two 6 TB hard drives (I'm waiting
for two more) which I hope I can reuse later in my final setup (production 
version):

```
Model Family:     Western Digital Red Pro
Device Model:     WDC WD6003FFBX-68MU3N0
Serial Number:    XXXXXXXX
LU WWN Device Id: 5 000cca 0bdde42fc
Firmware Version: 83.00A83
User Capacity:    6,001,175,126,016 bytes [6.00 TB]
Sector Sizes:     512 bytes logical, 4096 bytes physical
Rotation Rate:    7200 rpm
Form Factor:      3.5 inches
Device is:        In smartctl database [for details use: -P show]
ATA Version is:   ACS-2, ATA8-ACS T13/1699-D revision 4
SATA Version is:  SATA 3.2, 6.0 Gb/s (current: 3.0 Gb/s)
```
## Software 
I decided to start with CentOS (8.4 stream). The first issue was to get an external 
boot device working on that old hardware (Unfortunately the old hard drive has 
given up a longer time ago). It took me some time to figure out that I have to 
use a 2 GiB USB stick to get it working (some regards from the 32 bit time). I 
have tried larger USB sticks which where not recognized. I could have used a CD, 
DVD. I've really tested the blank CD's I have in my office, but they don't work 
any more (which is not unexpected). Apart from searching for a CD burner which I
fortunately have one available.

Ok booting up now works needed to do some Network setup using ip address, DNS entry,
gateway machine is working. Hm...basically.

# RAID Setup


#

[sata]: https://en.wikipedia.org/wiki/Serial_ATA
[nas]: https://en.wikipedia.org/wiki/Network-attached_storage
[samba]: https://en.wikipedia.org/wiki/Samba_(software)
[ftp]: https://en.wikipedia.org/wiki/File_Transfer_Protocol
[sftp]: https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol
[apfs]: https://en.wikipedia.org/wiki/Apple_File_System
[nfs]: https://en.wikipedia.org/wiki/Network_File_System
[ssd]: https://en.wikipedia.org/wiki/Solid-state_drive
[ssd-failure]: https://en.wikipedia.org/wiki/Solid-state_drive#SSD_failure
[units]: https://en.wikipedia.org/wiki/Byte#Multiple-byte_units
[rpms]: https://en.wikipedia.org/wiki/Revolutions_per_minute#International_System_of_Units
[si]: https://en.wikipedia.org/wiki/Binary_prefix
[floppy-disk]: https://en.wikipedia.org/wiki/Floppy_disk
[floppy-disk-5]: https://en.wikipedia.org/wiki/Floppy_disk#5%C2%BC-inch_floppy_disk
[floppy-disk-3]: https://en.wikipedia.org/wiki/Floppy_disk#3%C2%BD-inch_floppy_disk
[qic]: https://en.wikipedia.org/wiki/Quarter-inch_cartridge
[tape-drives]: https://en.wikipedia.org/wiki/Tape_drive
[raid]: https://en.wikipedia.org/wiki/RAID
[dds]: https://en.wikipedia.org/wiki/Digital_Data_Storage
[dds-1]: https://en.wikipedia.org/wiki/Digital_Data_Storage#DDS-1
[dds-3]: https://en.wikipedia.org/wiki/Digital_Data_Storage#DDS-3
[tar]: https://en.wikipedia.org/wiki/Tar_(computing)
[lto]: https://en.wikipedia.org/wiki/Linear_Tape-Open
[backup-terms]: https://en.wikipedia.org/wiki/Glossary_of_backup_terms
[3-2-1]: https://us-cert.cisa.gov/sites/default/files/publications/data_backup_options.pdf
[twitter-lto]: https://twitter.com/khmarbaise/status/550307131866746881?s=20

get some links to YT videos...

Software
TrueNas, openmediavault, plex.tv,

Links for TrueNas:
https://youtu.be/nVRWpV2xyds

https://youtu.be/WjLaK8yQAag



Review SSD / HDD NAS Drives:
https://www.storagereview.com/review/seagate-ironwolf-110-ssd-nas-review


producers of NAS:

https://www.qnap.com/
https://www.truenas.com/
https://www.asustor.com/
https://www.terra-master.com/
https://www.synology.com/


## Thoughts on different Tools

### Borg Backup
### Restic
### Duplicati

I have taken a look at duplicati but unfortunately
it's very UI centered and even the RPM for linux contains `.dll`
files which looks like windows based packaging...
I see a lot of `.exe` files in an RPM which to be honest
looks weird to me. 
Furthermore it will install a server and a cli...
!Contains a lot of windows based software???
Installs a web root into `/usr/lib/duplicati/webroot/` which 
does not belong there...

Violates: https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html

To be honest I get a bad impression if the RPM for linux contains things
which are not intended for linux ... lazyness? 


https://duplicati.readthedocs.io/en/latest/02-installation/