accessing
where
	^ {(#createIndexes -> collection name).
	(#indexes -> (indexes collect: [ :each | each asDictionary ]))} asDictionary