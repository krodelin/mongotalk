initialization
setUp
	super setUp.
	command := MongoListCollectionsCommand new
		database: database;
		yourself