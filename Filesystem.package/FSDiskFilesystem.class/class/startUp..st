initialize-release
startUp: resuming
	resuming ifTrue: [ self withAllSubclassesDo: [ :each | each reset ] ]