accessing
filterAutoIndexId
	^ filter
		at: 'options.autoIndexId'
		ifAbsent: [ nil ]