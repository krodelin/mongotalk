accessing
filterName
	^ filter at: 'name' ifAbsent: [ nil ]