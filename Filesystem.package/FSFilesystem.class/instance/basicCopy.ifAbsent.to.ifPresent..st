private
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock
	store
		basicCopy: source
		ifAbsent: aBlock
		to: destination
		ifPresent: pBlock
		filesystem: self