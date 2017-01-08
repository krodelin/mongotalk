tests
testConvenienceMethod
	| collections |
	collections := database listCollections.
	self
		assert: collections size equals: 1;
		assert: collections first qualifiedName equals: collection qualifiedName