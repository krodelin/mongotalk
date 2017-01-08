tests
testFilterAutoIndexId
	self
		shouldnt: [ command
				filterAutoIndexId: true;
				perform ]
		raise: Exception.
	self
		shouldnt: [ command
				filterAutoIndexId: false;
				perform ]
		raise: Exception