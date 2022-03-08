This script automatically adds the NMT network printers from Acad-PrintBox.

HOW TO USE:

1. in __printers.cfg, set which printers will be added, for example:

	library122-color
	library122-hidpi
	library122-hidpic
	library122-printer
	library122-printer3

	# library122-color3
	# cramer114-printer
	# fidel130-color
	# goldw101-printer
	# goldw145-color

	Lines with a pound sign (#) will be ignored, so those printers will not be added.
	(It is nice to keep them in the file for quick changes later on.)
	\\Acad-PrintBox\ is prepended automatically, so you only need to enter the printer name.

2. Double click the _add_printers_nps.bat script.

	This will add each listed in __printers.cfg

MORE NOTES:
	You can copy the scripts folder into the desktop files and run the _add_printers_nps.bat script
	on startup or when you need to print.

	I have noticed that some printers are unreachable from some locations on campus.
	For example, a library computer may never be able to install a printer in the Torres dorms.
	However, the script should be able to add all library printers from a library computer.

	This script does exactly the same thing as:
		a. "Add a printer or Scanner"
		b. "The Printer I want isn't Listed"
		c. "Select a shared printer by name"
		d. Typing '\\Acad-PrintBox\' and selecting a printer to install
	the process is simply automated by using the "rundll32 printui.dll PrintUIEntry" command.


scripts written by Noah Schoonover
noah@skoonie.com or noah.schoonover@student.nmt.edu
