public
activeBranch: branchName
	repository updateRef: 'HEAD' to: 'ref: refs/heads/' , branchName