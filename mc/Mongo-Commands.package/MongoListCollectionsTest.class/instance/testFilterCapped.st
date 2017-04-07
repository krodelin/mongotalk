tests
testFilterCapped
	self
		shouldnt: [ command
				filterCapped: true;
				perform ]
		raise: Exception.
	self
		shouldnt: [ command
				filterCapped: false;
				perform ]
		raise: Exception