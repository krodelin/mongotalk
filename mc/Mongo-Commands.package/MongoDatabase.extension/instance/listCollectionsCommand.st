*Mongo-Commands
listCollectionsCommand
	^ MongoListCollectionsCommand new
		database: self;
		yourself