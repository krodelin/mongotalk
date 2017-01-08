accessing
filterMax
	^ filter
		at: 'options.size'
		ifAbsent: [ nil ]