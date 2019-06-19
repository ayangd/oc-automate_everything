# oc-automate_everything
Minecraft opencomputers project. Aimed for automating everything in a system.  
Starting from a robot and a computer, then they expand themselves into an unlimited resource generator!

## Why a robot and a computer?
Because a robot cannot eject a floppy disk from itself, also cannot start the assembler machine alone.

![Replication Station](computer.png)
**Image** - Replication Station.

## Quick installation
For floppy (current stable and recommended):

```wget https://raw.githubusercontent.com/ayangd/oc-automate_everything/master/installer.lua autoAllInst.lua```

For newfloppy (unstable yet, future replacement):

```wget https://raw.githubusercontent.com/ayangd/oc-automate_everything/master/newinstaller.lua autoAllInst.lua```

>Note: Running these commands will extract files directly around it (Current directory).

## Progress
### Libraries/Utilities
|Library Name|Status|
|-|-|
|Robot navigation library|Gradually building up|
|Crafting library|Currently WIP|
|Smelting library|Not yet|
|Inventory library|Gradually building up|
|Logistic library|Not yet|
|Communication library|Not yet|
|Chest communication library|Not yet or never|

### Subsystems
|System Name|Status|
|-|-|
|Mining system|Not yet|
|Logging system|Not yet|
|Replication system|Not yet|
|Storage system|Not yet|
|Integrated GUI system|Not yet|
|Extra: Infrastructure building system|Not yet|

**Gradually building up* - will get improvement overtime

## How to try?
You'll need a `Creatix` and an empty floppy disk.
Change directory to the empty floppy disk, then follow the [Quick Installation](#quick-installation).

## What can I try?

### floppy
You can try running `craftingmanager` and run these lines of code slowly:
```
help
    Not a code: You scroll down by pressing the `space` key until it finishes printing.
load all
    Not a code: You put a cobblestone stairs' recipe into the robot's crafting grid
    Not a code: Empty slot 8
select 8
analyze shaped true
show slot
keep
save crafting
list crafting
trace opencomputers:case2
    Not a code: Put all raw ingredients into the robot's inventory
craft opencomputers:case2
exit
```
>Note: If you struggle reading errors, please use `crashtracker <lua file>` and check `crashtracker.txt` for errors.

### newfloppy
You can try running `craftmgr` and run these lines of code slowly:
```
help
    Not a code: Press the space key to scroll down.
trace opencomputers:case2
exit
```
>Note: If you struggle reading errors, please use `ct <lua file>` and check `ct.txt` for errors.

## Suggestions Welcome
If you want to help me improve, let me know by opening an issue :)
