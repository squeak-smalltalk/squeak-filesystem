I am an abstract superclass for operating-system-provided filesystems. Though I am abstract, I provide most of the functionality for my subclasses, since all platforms use the same primitives. 

Users should not explicitly use my subclasses but instead use me to provide the specific behavior.

Filesystem instances know two methods that return an FSReference object: working and root.

To obtain a reference to the current directory use: 
 	FSDiskFilesystem current working.
