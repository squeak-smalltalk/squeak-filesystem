enumerating
copyAllTo: APathOrAReference
	
	Transcript show: '?? ', APathOrAReference class name ;cr.  
	FSCopyVisitor copy: self asAbsolute to: APathOrAReference resolve