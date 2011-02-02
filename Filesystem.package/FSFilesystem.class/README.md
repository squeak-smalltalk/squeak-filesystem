I am an abstract superclass for filesystem implementations. Most of the time you should just use FSDiskFilesystem as a factory to access the correct instance allowing you to access your file system.

FSDiskFilesystem current