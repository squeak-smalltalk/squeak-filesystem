tests
testCPath
	| ref |
	ref := FSReference C / 'WINDOWS'.
	self assert: (ref filesystem isKindOf: FSFilesystem).
	self assert: ref filesystem store disk = 'C'.
	self assert: ref path = (FSPath / 'WINDOWS')