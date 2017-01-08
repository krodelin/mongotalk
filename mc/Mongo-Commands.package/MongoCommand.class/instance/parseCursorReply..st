parsing
parseCursorReply: aCollection
	| cursor |
	cursor := aCollection at: 'cursor'.
	(cursor at: 'id') = 0
		ifFalse: [ Error signal: 'TODO: A Mongo Command error returned a non-null cursor id.' ].
	^ cursor at: 'firstBatch'