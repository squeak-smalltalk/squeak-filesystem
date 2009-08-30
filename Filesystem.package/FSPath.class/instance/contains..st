comparing
contains: other
	self size < other size ifFalse: [^ false].
	1	to: self size 
		do: [:i | (self at: i) = (other at: i) ifFalse: [^ false]].
	^ true