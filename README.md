# P4G Custom Sub Menu (Vita)
**Custom scripts for Persona 4 Golden that replace the square button function with a fully featured trainer**  
<img src="/Screenshots/modmenu.gif?raw=true">  
Go to [this repository for the PC version](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu).
## Notable Features
- **Call Menu**: Using IDs, call a Field, Dungeon Floor, Battle, Event, Cutscene, BGM/SFX Track, Dungeon or Facility to load
- **Player Menu**: Change date/time, Social Link ranks, give yen/items, manage party members
- **Flags**: Toggle individual bitflags or entire ranges of them
More features will continue to be added as game functions are discovered.
## Optional Extensions
- MobileCalendar (view the calendar from anywhere!)
- QuickTravelPlus (extended quicktravel options in Yasogami High and around the town of Inaba)
- VRGameOverSkip (skips velvet room scene after game over) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13301))
- DungeonOptions (fast travel to any dungeon floor after deadline, heal, use goho-ms, organize party) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13356))
- SaveAnywhere by [Tupelov](https://github.com/Tupelov) ([see mod release](https://gamebanana.com/gamefiles/13318))
- FindAFriend by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/gamefiles/12921))
- ConsistentReaper by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13381))
## Usage (Vita)
### First Time Setup
1. Download [AutoPlugin2.vpk](https://github.com/ONElua/AutoPlugin2/releases) and transfer it to your Vita.
2. Install the VPK with Vitashell and launch the newly created bubble on your home screen.
3. Use AutoPlugin2 to install the plugins [0syscall6](https://github.com/SKGleba/0syscall6/releases), [nonpdrm](https://sites.google.com/site/theleecherman/) (v1.4 by lman), and [rePatch](https://github.com/dots-tb/rePatch-reDux0/releases) (v3.0). Remove ref00d if you already have it installed.
4. Download lipsum's [mod support eboot](https://amicitia.github.io/post/p4g-mod-cpk) for your region of the game and tranfer it to ux0:/rePatch/PCSE00120 on your Vita. Create the path if it doesn't already exist.
### Building the Mod
1. Download and unzip the [Mod Compendium](https://gamebanana.com/tools/6878) and add the [latest compiled Release](https://github.com/TGEnigma/Mod-Compendium/releases) to the "Mods" folder.
2. In the Mod Compendium Settings, choose any .CPK file as the CPK path. Uncheck "PC mode" and "Use extracted files". Keep "Use compression" checked.
3. Click build and a new CPK file will be generated in your chosen output folder. Rename it to "mod.cpk."
4. Transfer it to your PSVita's ux0:/rePatch/PCSE00120/data directory. Create this path if it doesn't already exist.
5. Start the game!
## Compiling the scripts yourself
You don't have to follow this section if you're merely installing the mod on your Vita. This is for developers who want to make changes to the mod.
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which is used to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download this [P4G Library](https://github.com/Tupelov/Persona-Library) that includes some function names used in this menu. Extract it and overwrite the contents of the **AtlusScriptTools\Libraries folder**.
3. Also download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases) which is used to repack BIN/PAK files.
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Run build_local.bat.
