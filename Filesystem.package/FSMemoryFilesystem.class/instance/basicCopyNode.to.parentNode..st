private
basicCopyNode: srcNode to: destination parentNode: destNode
	destNode data 
		at: destination basename
		put: (FSMemoryNode withData: srcNode data copy)