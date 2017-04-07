accessing
filterCapped
	^ filter
		at: 'options.capped'
		ifAbsent: [ nil ]