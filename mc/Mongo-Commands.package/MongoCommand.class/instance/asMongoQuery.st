converting
asMongoQuery
	"Convert this command into a query which can be executed"

	| dic |
	dic := self orderPreservingDictionary
		at: self commandName put: self commandNameValue;
		addAll: self commandArguments;
		yourself.
	^ MongoQuery new
		collection: (MongoMetaCollection name: '$cmd');
		where: dic;
		yourself