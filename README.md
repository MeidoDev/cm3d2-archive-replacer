ArchiveReplacer
===============

**Version:** 2015.9.21.0

**Source:** [Github](https://github.com/asm256/CM3D2.ArchiveReplacer)

**Author:** [asm__](https://github.com/asm256)

This patch / hook combination allows injecting resources into arc files without actually touching them. It basically works like DEFLARC, without the need to extract all the arc files.

**You will need a working ReiPatcher setup to use this mod.**

### Requirements & Limitations

* Your CM3D2 version needs to be 1.0.4 or higher
* You can't use this mod together with DEFLARC
* It's currently not possible to replace script files (*.tjs / *.ks)


### Installation

* Download and extract the source files into a folder of your liking (but **not** your ReiPatcher / CM3D2 folder)
* Edit the `build.bat` file:
  * `Line 10:` Change the path so it points to your CM3D2 dir
  * `Line 13:` Change the path so it points to your ReiPatcher dir
  * *(optional) If you're using the 32bit version, change any occurance of `x64` to `x86`*
  * *(optional) If your ReiPatcher expects patches in a different place than the `Patches` folder, adjust `line 16` accoringly*
* Run `build.bat`, it will compile the patch / hook and copy the files to the appropriate directories
* *(optional) If you plan on using the VR version, copy `CM3D2.ArchiveReplacer.Hook.dll` from `CM3D2x64_Data\Managed` to `CM3D2VRx64_Data\Managed`*
* Run ReiPatcher


### Usage

You'll find a folder named `_Data` inside your game directory which holds all the resources you want to inject. Keep in mind that you will have to retain the exact directory structure as if you were using DEFLARC.

In general, if you want to install a mod that requires you to copy files into a deflarc'ed `GameData` directory, you would just copy those files into the `_Data` directory instead.


### Troubleshooting

* If your game doesn't start (only a black screen), make sure there's a folder called `_Data` inside your CM3D2 folder