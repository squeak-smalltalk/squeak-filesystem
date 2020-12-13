file status
close
	
	store 
		replaceFile: path 
		in: [ :bytes | self binary; contents ]
