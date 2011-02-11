private
basicRename: source ifAbsent: aBlock as: destination ifPresent: pBlock

	| old |
	old := self exists: source.
	old ifFalse: [aBlock value].
	(self exists: destination) ifTrue: [ pBlock value ].
	Primitives rename: source fullName  to: destination fullName