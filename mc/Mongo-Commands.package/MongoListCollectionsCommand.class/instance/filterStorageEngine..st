accessing
filterStorageEngine: aDictionary
	^ filter
		at: 'options.storageEngine'
		put: aDictionary