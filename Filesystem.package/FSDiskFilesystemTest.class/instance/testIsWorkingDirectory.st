tests
testIsWorkingDirectory
	"self debug: #testIsWorkingDirectory"
	
	"why this is wrong?"
	self assert: (filesystem workingDirectory isWorkingDirectory).
	"why do we always have to type 
	FSDiskFilesystem current working
	
	why can't we 
		rename 
			workingDirectory -> workingDirectoryPath since it returns a path 
		and get 
			workingDirectory 
				implemented as 
					FSDiskFilesystem current working
		
		So that we can write 
			FSDiskFilesystem workingDirectory
	"