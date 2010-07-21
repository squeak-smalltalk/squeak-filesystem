private
createReferencedDirectory
	| refWalker dirList |
	refWalker := self baseDir.
	dirList := OrderedCollection new.
	
	[refWalker ~= (self baseDir filesystem root)]
		whileTrue: [dirList addFirst: refWalker. refWalker := refWalker parent].
	
	dirList do: [:each | each exists ifFalse: [each createDirectory]]
	