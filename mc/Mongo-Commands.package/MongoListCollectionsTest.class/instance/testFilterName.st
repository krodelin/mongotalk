tests
testFilterName
	| collections |
	collections := command
		filterName: 'nonExistentCollection';
		perform.
	self assert: collections isEmpty.
	collections := command
		filterName: 'testCollection';
		perform.
	self
		assert: collections size equals: 1;
		assert: collections first qualifiedName equals: collection qualifiedName