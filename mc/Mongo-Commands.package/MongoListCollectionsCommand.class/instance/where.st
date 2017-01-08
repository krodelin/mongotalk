accessing
where
	| dic |
	dic := self orderPreservingDictionary.
	dic at: 'listCollections' put: 1.
	filter ifNotNil: [ :value | dic at: 'filter' put: value ].
	^ dic