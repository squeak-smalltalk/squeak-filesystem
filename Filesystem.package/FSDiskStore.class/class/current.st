current
current
	^ Current ifNil: [Current := self activeClass createDefault]