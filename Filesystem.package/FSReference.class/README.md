I combine a filesystem and path, which is sufficient to refer to a concrete file or directory. I provide methods for navigating my filesystem, performing filesystem operations and opening and closing files.  I am the primary mechanism for working with files and directories. 

With FSFilesystem and its subclasses such as FSDiskFilesystem I'm the class of choice to get started.

| working |
working := FSDiskFilesystem current working.
working files 


| disk |
disk := FSDiskFilesystem current.
disk root.                               "a reference to the root directory"
disk working.                         "a reference to the working directory"
