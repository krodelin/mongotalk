converting
asQuery
	^ MongoQuery new
		collection: (MongoMetaCollection name: '$cmd');
		where: self where;
		yourself