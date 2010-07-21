tests
testVersions
	| versions |
	versions := repository versions.
	versions do: [ :version |
		self assert: version species = FSGitFilesystem.
		self assert: ({ FSPath / 'first blob'. FSPath / 'second blob' } 
			includes: version root children first path) ]