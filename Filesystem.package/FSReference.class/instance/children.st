navigating
children
	^ (filesystem childrenAt: path) collect: 
		[:ea |
		FSReference
			filesystem: filesystem
			path: ea]