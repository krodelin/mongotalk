accessing
where
	self error.
	^ {(#createIndexes -> collection name).
	(#indexes -> (indexes collect: [ :each | each asDictionary ]))}
		asDictionary