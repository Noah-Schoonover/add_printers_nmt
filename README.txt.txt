These scripts automatically add the NMT network printers from Acad-PrintBox.

HOW TO USE:

1. in __config.ini, set which printers will be added, for example:

	[PrinterConfig]
	addPrinter=library122-hidpi

	Note: there must be a PrinterConfig header at the top of the file.
	\\Acad-PrintBox\ is prepended automatically, so you only need to enter the printer name.
	You can duplicate this line for as many printers as you would like to add.
	It is not necessary to add ignorePrinter; these lines are simply ignored. I keep them 
	for the ease of adding them later if needed.

2. Double click the _add_printers.bat script.

	This will add each addPrinter listed in __config.ini

MORE NOTES:
	You can copy the scripts folder into the desktop files and run the _add_printers.bat script
	on startup or when you need to print.

	I have noticed that some printers are unreachable from some locations on campus.
	For example, a library computer may never be able to install a printer in the Torres dorms.
	However, the script should be able to add all library printers from a library computer.

	This script does exactly the same thing as 
		a. "Add a printer or Scanner" 
		b. "The Printer I want isn't Listed"
		c. "Select a shared printer by name"
		d. Typing '\\Acad-PrintBox\' and selecting a printer to install
	the process is simply automated by using the "rundll32 printui.dll PrintUIEntry" command.


scripts written by Noah Schoonover
noah@skoonie.com

