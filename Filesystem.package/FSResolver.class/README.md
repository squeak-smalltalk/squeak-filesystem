I am an abstract superclass for objects that can resolve origins into references. Such objects form a kind of chain of Responsibility design pattern i.e. are a kind of  linked list, and when unable to resolve a particular origin, delegate that resolution request to the next resolver in the list.

next
	The next resolver in the list, or nil
