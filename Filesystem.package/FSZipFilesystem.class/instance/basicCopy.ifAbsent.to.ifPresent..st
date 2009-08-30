private
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock
	| destname copy |
	self
		entryAt: source
		ifPresent:
			[:smember | 
			destname := self pathToString: destination.
			copy := self copyFile: smember as: destname.
			self 
				entryAt: destination
				ifPresent: [:dmember | pBlock value ]
				ifAbsent: [archive addMember: copy]]
		ifAbsent: aBlock