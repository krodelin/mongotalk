accessing
filterAutoIndexId: aBoolean
	^ filter
		at: 'options.autoIndexId'
		put: aBoolean