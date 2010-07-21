instance creation
makeTagNamed: tagName for: aGitCommit message: message in: aGitRepository
	^ self
		makeTagNamed: tagName
		for: aGitCommit
		message: message
		tagger: GitStamp now
		in: aGitRepository