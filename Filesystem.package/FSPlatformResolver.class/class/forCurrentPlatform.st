as yet unclassified
forCurrentPlatform
	| platformName |
	platformName :=  SmalltalkImage current platformName.
	^ (self allSubclasses detect: [:ea | ea platformName = platformName]) new