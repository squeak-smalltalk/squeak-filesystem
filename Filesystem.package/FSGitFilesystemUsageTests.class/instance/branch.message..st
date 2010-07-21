helpers
branch: branchName message: aMessage
	[ [ fs branch: branchName message: aMessage ] 
		on: GitStampNameRequest
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest 
			do: [ :req | req resume: 'homer@nuke.com' ]