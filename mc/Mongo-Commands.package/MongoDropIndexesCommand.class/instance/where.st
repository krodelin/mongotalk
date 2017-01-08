accessing
where
	^ {(#dropIndexes -> collection name).
	(#index -> (index ifNil: [ '*' ] ifNotNil: [ index name ]))} asDictionary