running
setUp
	| repoRef repo commit tree blob |
	GitStamp
		defaultName: 'Homer Simpson';
		defaultEmail: 'homer@nuke.com'.
		
	repoRef := FSMemoryFilesystem new root resolve: 'testRepo'.
	repo := GitRepository on: repoRef.
	blob := GitBlob bytes: 'blob1'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'first blob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature }.
	commit := GitCommit 
		withTree: tree
		message: 'first commit'
		author: GitStamp now
		committer: GitStamp now.
	repo
		storeObject: blob;
		storeObject: tree;
		storeObject: commit;
		updateRef: 'refs/heads/branch1' to: commit signature.
	
	blob := GitBlob bytes: 'blob2'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'second blob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature }.
	commit := GitCommit
		withTree: tree
		message: 'second commit'
		author: GitStamp now
		committer: GitStamp now.
	repo
		storeObject: blob;
		storeObject: tree;
		storeObject: commit;
		updateRef: 'HEAD' to: commit signature;
		updateRef: 'refs/heads/master' to: commit signature.
		
	basicRepository := repo.
	repository := GitFSRepository on: repoRef