# kobopatch
> Patch it, check it, quick – upgrade it

This repository contains my configuration to tweak the kobo e-reader firmware to my liking. To update kobopatch, you can download the binaries [here](https://github.com/pgaskin/kobopatch/releases/latest).

<img width="500" src="https://github.com/obynio/kobopatch-config/assets/2095991/d419c825-df3f-4837-9196-cb5f07674df0" alt="kobo screenshot">

## How to use

1. Download a firmware [here](https://pgaskin.net/KoboStuff/kobofirmware.html).
2. Put the whole zip in `src`.
3. Change the path in `kobopatch.yaml`.
4. Run `./kobopatch.sh`.
5. Move the `KoboRoot.tgz` to the `.kobo` folder on your kobo and trigger the update.

## Includes

On top of the firmware tweaks, the image also contains these mods:

* [NickelMenu](https://github.com/pgaskin/NickelMenu) which provides a customizable power user menu to the kobo, greatly ehancing the experience.
*  [NickelSeries](https://github.com/pgaskin/kobo-mods/tree/master/NickelSeries) which scans automatically for calibre series on sideloaded KEPUB and EPUB books.
