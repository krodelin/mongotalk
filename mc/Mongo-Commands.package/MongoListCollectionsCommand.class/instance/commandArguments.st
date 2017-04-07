accessing
commandArguments
	| dic |
	dic := self orderPreservingDictionary.
	filter ifNotNil: [ :value | dic at: 'filter' put: value ].
	^ dic