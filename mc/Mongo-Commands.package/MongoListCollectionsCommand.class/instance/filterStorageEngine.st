accessing
filterStorageEngine
	^ filter
		at: 'options.storageEngine'
		ifAbsent: [ nil ]