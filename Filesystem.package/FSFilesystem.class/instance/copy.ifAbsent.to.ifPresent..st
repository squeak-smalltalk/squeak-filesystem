public
copy: sourcePath ifAbsent: aBlock to: destPath ifPresent: pBlock
	| source destination |
	source := self resolve: sourcePath asPath.
	destination := self resolve: destPath asPath.
	self basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock