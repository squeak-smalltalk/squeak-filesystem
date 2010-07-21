tests
testLoadingAssociations
	| taglikeObject |
	taglikeObject := GitTaglikeObject new.
	self assert: taglikeObject properties isEmpty.
	
	taglikeObject loadKey: 'keyname' value: 'keyobject'.
	self assert: taglikeObject properties first species = Association.
	self assert: taglikeObject properties first key = 'keyname'
	