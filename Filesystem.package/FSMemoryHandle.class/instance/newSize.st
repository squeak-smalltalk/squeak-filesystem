private
newSize
	^ bytes size + ((bytes size min: 20) max: 1024)