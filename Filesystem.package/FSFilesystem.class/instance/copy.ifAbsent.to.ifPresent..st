public
copy: sourcePath ifAbsent: aBlock to: destPath ifPresent: pBlock
	| source destination |
	source := self resolve: sourcePath.
	destination := self resolve: destPath.
	self basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock