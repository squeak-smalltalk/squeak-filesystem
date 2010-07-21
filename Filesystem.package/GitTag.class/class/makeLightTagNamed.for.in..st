instance creation
makeLightTagNamed: aString for: aGitCommit in: aGitRepository
	| tag |
	self assert: aGitCommit species = GitCommit.
	tag := self new
		name: aString;
		object: aGitCommit;
		repository: aGitRepository.
	tag store.
	^tag
		