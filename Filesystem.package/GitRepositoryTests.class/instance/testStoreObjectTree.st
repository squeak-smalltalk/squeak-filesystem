tests
testStoreObjectTree
	| tree storedObject |
	tree := GitTree new.
	storedObject := repository storeObject: tree.
	self assert: storedObject = tree