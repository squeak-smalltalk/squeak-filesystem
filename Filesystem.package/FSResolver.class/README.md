I am an abstract super class for objects that can resolve origins into references. Such objects form a linked list, and when unable to resolve a particular origin, delegate that resolution request to the next resolver in the list.

next
	The next resolver in the list, or nil
