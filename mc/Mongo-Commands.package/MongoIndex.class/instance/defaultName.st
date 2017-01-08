defaults
defaultName
	key isEmptyOrNil
		ifTrue: [ self error: 'Cannot determine default name' ].
	^ String
		streamContents:
			[ :stream | key keys do: [ :each | stream nextPutAll: each ] separatedBy: [ stream nextPut: $_ ] ]