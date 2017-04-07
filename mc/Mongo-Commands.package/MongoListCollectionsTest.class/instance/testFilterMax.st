tests
testFilterMax
	self
		shouldnt: [ command
				filterMax: 0;
				perform ]
		raise: Exception.
	self
		shouldnt: [ command
				filterMax: 1024;
				perform ]
		raise: Exception