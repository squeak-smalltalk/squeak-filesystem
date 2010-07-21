accessing
branches
	^ repository branches collect: [ :commit | GitFS for: repository revision: commit]