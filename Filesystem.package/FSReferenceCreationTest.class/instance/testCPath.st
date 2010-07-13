tests
testCPath
	| ref |
	ref := FSReference C / 'WINDOWS'.
	self assert: (ref filesystem isKindOf: FSWindowsFilesystem).
	self assert: ref filesystem disk = 'C'.
	self assert: ref path = (FSPath / 'WINDOWS')