instance creation
forCurrentPlatform
	| platformName |
	platformName :=  SmalltalkImage current platformName.
	^ (self allSubclasses detect: [:ea | ea platformName = platformName]) new