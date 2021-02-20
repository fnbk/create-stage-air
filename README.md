# How to turn off any unwanted sounds from "Creative Stage Air".

Problem: "Pairing mode! Waiting for device to connect!"

Outline:
* Download Firmware Update
* find positions of .mp3 files
* change gain in .mp3 files
* Install Firmware Update

## Prerequisites
* binwalker
* mp3gain

## Find Positions of .mp3 Files

```
$ binwalk -R '\x49\x44\x33' app.bin

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
196608        0x30000         Raw signature (\x49\x44\x33)
205312        0x32200         Raw signature (\x49\x44\x33)
223232        0x36800         Raw signature (\x49\x44\x33)
241152        0x3AE00         Raw signature (\x49\x44\x33)
259072        0x3F400         Raw signature (\x49\x44\x33)
266752        0x41200         Raw signature (\x49\x44\x33)
275968        0x43600         Raw signature (\x49\x44\x33)
286720        0x46000         Raw signature (\x49\x44\x33)
```


## Change Gain in .mp3 Files

```
$ ./patch.sh

8704
8704+0 records in
8704+0 records out
8704 bytes (8.7 kB, 8.5 KiB) copied, 0.0068463 s, 1.3 MB/s
17920
17920+0 records in
17920+0 records out
17920 bytes (18 kB, 18 KiB) copied, 0.0157467 s, 1.1 MB/s
17920
17920+0 records in
17920+0 records out
17920 bytes (18 kB, 18 KiB) copied, 0.0141369 s, 1.3 MB/s
17920
17920+0 records in
17920+0 records out
17920 bytes (18 kB, 18 KiB) copied, 0.0139641 s, 1.3 MB/s
7680
7680+0 records in
7680+0 records out
7680 bytes (7.7 kB, 7.5 KiB) copied, 0.0059855 s, 1.3 MB/s
9216
9216+0 records in
9216+0 records out
9216 bytes (9.2 kB, 9.0 KiB) copied, 0.007183 s, 1.3 MB/s
10752
10752+0 records in
10752+0 records out
10752 bytes (11 kB, 10 KiB) copied, 0.0083922 s, 1.3 MB/s
14131
14131+0 records in
14131+0 records out
14131 bytes (14 kB, 14 KiB) copied, 0.0110336 s, 1.3 MB/s
Applying gain change of -99 to 0.mp3...

done
Applying gain change of -99 to 1.mp3...

done
Applying gain change of -99 to 2.mp3...

done
Applying gain change of -99 to 3.mp3...

done
Applying gain change of -99 to 4.mp3...

done
Applying gain change of -99 to 5.mp3...

done
Applying gain change of -99 to 6.mp3...

done
Applying gain change of -99 to 7.mp3...

done
17+1 records in
8800+0 records out
8800 bytes (8.8 kB, 8.6 KiB) copied, 0.0030487 s, 2.9 MB/s
35+1 records in
18016+0 records out
18016 bytes (18 kB, 18 KiB) copied, 0.0061632 s, 2.9 MB/s
35+1 records in
18016+0 records out
18016 bytes (18 kB, 18 KiB) copied, 0.0062074 s, 2.9 MB/s
35+1 records in
18016+0 records out
18016 bytes (18 kB, 18 KiB) copied, 0.0060987 s, 3.0 MB/s
15+1 records in
7776+0 records out
7776 bytes (7.8 kB, 7.6 KiB) copied, 0.0026939 s, 2.9 MB/s
18+1 records in
9312+0 records out
9312 bytes (9.3 kB, 9.1 KiB) copied, 0.0031833 s, 2.9 MB/s
21+1 records in
10848+0 records out
10848 bytes (11 kB, 11 KiB) copied, 0.0036904 s, 2.9 MB/s
27+1 records in
14227+0 records out
14227 bytes (14 kB, 14 KiB) copied, 0.0048254 s, 2.9 MB/s
```

## Install Firmware Update

1) copy the firmware update binary (app.bin) onto an empty USB-Stick
1) turn on your "Creative Stage Air" speaker into aux mode (green LED)
1) put the USB stick into a speaker
1) during the update the LED will change, the LED may also turn off (that is normaly), wait for 1 minute
1) remove the USB stick
1) turn on the speaker



## source

* https://joelw.id.au/CreativeStageAir
* https://support.creative.com/products/productdetails.aspx?catid=4&subcatid=848&prodid=23276&prodname=Creative+Stage+Air&subcatname=Creative&catname=Speaker+Systems
* http://mp3gain.sourceforge.net/
* http://mp3gain.sourceforge.net/






