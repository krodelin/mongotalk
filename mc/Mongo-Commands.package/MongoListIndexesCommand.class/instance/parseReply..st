parsing
parseReply: aCollection
	| indexes |
	indexes := self parseCursorReply: aCollection.
	^ indexes
		collect: [ :index | 
			| options |
			options := index copy
				removeKey: 'name';
				removeKey: 'key';
				yourself.
			MongoIndex name: (index at: 'name') key: (index at: 'key') options: options ]