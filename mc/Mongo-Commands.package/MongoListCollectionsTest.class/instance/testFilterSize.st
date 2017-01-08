tests
testFilterSize
	self
		shouldnt: [ command
				filterSize: 0;
				perform ]
		raise: Exception.
	self
		shouldnt: [ command
				filterSize: 1024;
				perform ]
		raise: Exception