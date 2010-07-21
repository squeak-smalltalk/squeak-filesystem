internal
recursiveUpdateTrees: aDirReference
	| tree treeEntries |
	treeEntries := OrderedCollection new.
	aDirReference children do: [ :each | 
		((modified root resolve: each path) exists and: [ each isDirectory ])
			ifTrue: [ self recursiveUpdateTrees: each ].
		treeEntries add: (self treeEntryFor: each) ].
	
	tree := GitTree entries: treeEntries.
	repository storeObject: tree.
	objectMap at: aDirReference path put: tree.
	^ tree