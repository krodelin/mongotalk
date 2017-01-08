tests
testFilterStorageEngine
	self
		shouldnt: [ command
				filterStorageEngine: {('wiredTiger' -> {('configString' -> 'block_compressor=zlib')} asDictionary)} asDictionary;
				perform ]
		raise: Exception