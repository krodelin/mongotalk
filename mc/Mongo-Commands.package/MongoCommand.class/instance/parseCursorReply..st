parsing
parseCursorReply: aDictionary
	"Parse a reply with an embedded cursor. Return the first batch.
	I've not yet encounterd a result with a valid cursor - however this case is catched and raised."

	| cursor |
	cursor := aDictionary at: 'cursor'.
	(cursor at: 'id') = 0
		ifFalse: [ Error
				signal:
					'TODO: A Mongo Command error returned a non-null cursor id.' ].
	^ cursor at: 'firstBatch'