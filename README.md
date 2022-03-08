# Automated Printer Connection Scripts

This script automatically adds the NMT network printers from the Acad-PrintBox network.
It is meant for use with campus computers.

## HOW TO USE (2 steps):

1. in `printers.cfg`, indicate which printers should be added, for example:

	```
	# Example contents of the printers.cfg file
	# Lines with the pound sign (#) as the first character are comments/ignored.

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
	# goldw203-printer
	# msec239-printer
	# msec345-color
	# msec345-printer
	# south218-printer
	# speare16-printer
	# Speare23a-printer
	# Speare4a-printer
	# Speare5-printer
	# speare9-printer
	# torres130-printer
	# west219-printer

	# It's good to keep the extra printers in the file for quick changes later on.
	# \\Acad-PrintBox\ is prepended automatically, so you only need to enter the printer name.
	```

2. Double click the `add_printers.bat` script.

	The script will add the specified printers according to `printers.cfg`



## NOTES:

You can copy the scripts folder into the desktop files and run the `add_printers.bat` script
on startup or when you need to print.

I have noticed that some printers are unreachable from some locations on campus;
a library computer may never be able to install a printer in the Torres dorms.
However, you should be able to add all library printers from a library computer.

This script does exactly the same thing as:

	a. "Add a printer or Scanner"

	b. "The Printer I want isn't Listed"

	c. "Select a shared printer by name"
	
	d. Typing `\\Acad-PrintBox\` and selecting a printer to install

the process is simply automated by using the `rundll32 printui.dll PrintUIEntry` command.


_scripts written by Noah Schoonover_

_noah@skoonie.com or noah.schoonover@student.nmt.edu_
