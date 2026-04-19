# kobopatch-config
> Patch it, check it, quick – upgrade it

Hey fellow space cowboy. You're probably here because you want to remove all this ugly adware from your kobo and get a clean kobo experience ? Fear no more. This repository contains my configuration to tweak the kobo e-reader firmware to my liking. To update kobopatch, you can download the binaries [here](https://github.com/pgaskin/kobopatch/releases/latest).

<img width="400" src="https://github.com/user-attachments/assets/8e599878-6fb3-4e97-8911-9122d1c19f84" alt="kobo patches">
<img width="400" src="https://github.com/user-attachments/assets/bba85f9a-6029-4dff-ac9f-0a1d21a1c18c" alt="kobo tweaks">

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
* [KoboTailscale](https://github.com/videah/kobo-tailscale/tree/master) which connects the kobo to my tailscale mesh network.
* [KoboSSH](https://github.com/obynio/kobopatch-ssh) which adds dropbear on the device.
* [KoboTweaks](https://github.com/redphx/kobo-tweaks) which adds nice clock and battery

## Blogs

* [My E-Reader Setup](https://blog.videah.net/my-e-reader-setup/)
* [Setup SSH on Kobo](https://www.robelix.com/posts/43-rsync-for-the-Kobo.html)

## Tips

### Bookmark size matching

The custom bookmark might not work if it's too big. It's recommended to use dimensions similar to the original. Below are the dimensions of Kobo's default bookmark image.

| Device/Dimensions | 57x54 | 64x61 | 102x97 | 116x110 | 133x126 |
|-|:-:|:-:|:-:|:-:|:-:|
| Mini<br>Touch 2.0 | x |
| Aura, Aura Edition 2<br>Glo Nia | | x |
| Aura H2O, Aura HD<br>Clara 2E, Clara BW, Clara Colour, Clara HD<br>Glo HD | | | x |
| Libra 2, Libra Colour, Libra H2O | | | | x |
| Aura One<br>Elipsa, Elipsa 2E<br>Forma<br>Sage | | | | | x |

### Avoid images in the kobo library

In the `[FeatureSettings]` section, add or edit the line with the following
`ExcludeSyncFolders=(\\.(?!kobo|adobe).+|([^.][^/]*/)+\\..+)`
