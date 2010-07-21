accessing
tags
	^ repository tags collect: [ :tag | GitFS for: repository revision: tag object ]