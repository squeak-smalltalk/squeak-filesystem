accessing
changeDirectory: aPath
	self workingDirectory: (self resolve: aPath)