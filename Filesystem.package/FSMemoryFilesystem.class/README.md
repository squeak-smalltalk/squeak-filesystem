I implement the filesystem protocol, but store data within the image, rather than on disk. I model Directories as Dictionaries, and files as ByteArrays. 

root
	A Dictionary that represents the root of the filesystem. 