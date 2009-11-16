enumerating
allChildren
	^ FSCollectVisitor breadthFirst: self collect: [:ea | ea reference]