*Mongo-Commands
listCollections
	| command |
	command := MongoListCollectionsCommand new
		database: self;
		yourself.
	^ command perform