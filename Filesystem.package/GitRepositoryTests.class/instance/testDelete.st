tests
testDelete
	self assert: repository exists description: 'Need a repository to delete.'.
	repository delete.
	self deny: repository exists description: 'Deletion of repository failed.'