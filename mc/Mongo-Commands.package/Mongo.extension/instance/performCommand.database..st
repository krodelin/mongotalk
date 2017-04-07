*Mongo-Commands
performCommand: aMongoCommand database: aDatabase
	| query reply |
	query := aMongoCommand asMongoQuery
		database: aDatabase;
		yourself.
	reply := self queryOne: query.
	(reply at: 'ok' ifAbsent: [ self error ]) = 1.0
		ifFalse: [ MongoCommandError signalFor: reply ].
	^ aMongoCommand parseReply: reply