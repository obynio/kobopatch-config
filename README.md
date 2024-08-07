# kobopatch-config
> Patch it, check it, quick – upgrade it

Hey fellow space cowboy. You're probably here because you want to remove all this ugly adware from your kobo and get a clean kobo experience ? Fear no more. This repository contains my configuration to tweak the kobo e-reader firmware to my liking. To update kobopatch, you can download the binaries [here](https://github.com/pgaskin/kobopatch/releases/latest).

<img width="500" src="https://github.com/obynio/kobopatch-config/assets/2095991/d419c825-df3f-4837-9196-cb5f07674df0" alt="kobo screenshot">

## How to use

1. Download a firmware [here](https://pgaskin.net/KoboStuff/kobofirmware.html).
2. Put the whole zip in `src`.
3. Change the path in `kobopatch.yaml`.
4. Run `./kobopatch.sh`.
5. Move the `KoboRoot.tgz` to the `.kobo` folder on your kobo and trigger the update.

## Effects to investigate

* When assigning `affiliate=RakutenBooks` in `affiliate.conf` you can manage to skip the affiliate logo on bootscreen and skip firmware upgrades.

## Includes

On top of the firmware tweaks, the image also contains these mods:

* [NickelMenu](https://github.com/pgaskin/NickelMenu) which provides a customizable power user menu to the kobo, greatly ehancing the experience.
* [NickelClock](https://github.com/shermp/NickelClock) to show clock and battery status while reading.
* [KoboTailscale](https://github.com/videah/kobo-tailscale/tree/master) which connects the kobo to my tailscale mesh network.
* [KoboSSH](https://github.com/obynio/kobopatch-ssh) which adds dropbear on the device.

## Blogs

* [My E-Reader Setup](https://blog.videah.net/my-e-reader-setup/)
* [Setup SSH on Kobo](https://www.robelix.com/posts/43-rsync-for-the-Kobo.html)
