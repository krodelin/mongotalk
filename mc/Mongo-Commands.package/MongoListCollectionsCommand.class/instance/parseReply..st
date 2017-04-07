parsing
parseReply: aCollection
	| names |
	names := (self parseCursorReply: aCollection) collect: [ :each | each at: 'name' ].
	^ names collect: [ :name | database getCollection: name ]