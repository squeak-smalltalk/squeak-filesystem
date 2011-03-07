private
basicCreateFile: path parentNode: node
	^ node data 
		at: path basename
		put: FSMemoryNode newFile