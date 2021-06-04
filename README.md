Code Tools
     ██████╗ ██████╗ ██████╗ ███████╗
    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
    ██║     ██║   ██║██║  ██║█████╗
    ██║     ██║   ██║██║  ██║██╔══╝
    ╚██████╗╚██████╔╝██████╔╝███████╗
     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
████████╗ ██████╗  ██████╗ ██╗     ███████╗
╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
   ██║   ██║   ██║██║   ██║██║     ███████╗
   ██║   ██║   ██║██║   ██║██║     ╚════██║
   ██║   ╚██████╔╝╚██████╔╝███████╗███████║
   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
===========================================

A collection of source code tools / scripts.


Formatting Scripts
------------------
* clean_space.sh      - Remove trailing whitespace from code lines.
* convert_to_space.sh - Convert 1 TAB to 8 spaces.
* convert_to_tabs.sh  - Convert 8 spaces to 1 TAB (start of line only).

###Usage
Copy a script to the folder you want to format and run it:

	$ ./clean_space.sh

###Notes
* Scripts only act on .c, .h, and .sh files. This can easily be changed.
* Scripts scan recursively and act on *ALL* subfolders also!


Linux Scripts
-------------
* system_info.sh - Display Linux system information.
