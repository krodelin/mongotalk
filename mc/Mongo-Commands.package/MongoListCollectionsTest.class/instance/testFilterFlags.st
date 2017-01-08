tests
testFilterFlags
	self
		shouldnt: [ command
				filterFlags: 0;
				perform ]
		raise: Exception.
	self
		shouldnt: [ command
				filterFlags: 3;
				perform ]
		raise: Exception