tests
testSelect
	| selected |
	collection add: (Dictionary new at: 'key1' put: 'value1'; yourself).
	collection add: (Dictionary new at: 'key2' put: 'value2'; yourself).
	selected := collection select: { 'key1' -> 'value1'} asDictionary.
	self assert: selected size equals: 1