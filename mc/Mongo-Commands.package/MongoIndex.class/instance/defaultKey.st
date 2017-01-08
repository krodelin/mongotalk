defaults
defaultKey
	name ifNil: [ self error: 'Cannot determine default key' ].
	^ {(self name -> self defaultIndexType)} asDictionary