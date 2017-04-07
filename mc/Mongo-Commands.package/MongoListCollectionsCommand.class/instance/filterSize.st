accessing
filterSize
	^ filter
		at: 'options.size'
		ifAbsent: [ nil ]