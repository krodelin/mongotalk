accessing
where
	self error.
	^ {(#dropIndexes -> collection name).
	(#index -> (index ifNil: [ '*' ] ifNotNil: [ index name ]))} asDictionary