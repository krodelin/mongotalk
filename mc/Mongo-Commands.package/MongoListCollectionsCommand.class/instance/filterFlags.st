accessing
filterFlags
	^ filter
		at: 'options.flags'
		ifAbsent: [ nil ]