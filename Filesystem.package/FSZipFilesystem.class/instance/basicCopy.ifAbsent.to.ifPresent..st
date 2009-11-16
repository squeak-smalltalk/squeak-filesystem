private
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock 
	| destname copy |
	self 
		nodeAt: source
		ifPresent: 
			[ :smember | 
			destname := self pathToString: destination.
			copy := self 
				copyFile: smember
				as: destname.
			self 
				nodeAt: destination
				ifPresent: [ :dmember | pBlock value ]
				ifAbsent: [ archive addMember: copy ] ]
		ifAbsent: aBlock