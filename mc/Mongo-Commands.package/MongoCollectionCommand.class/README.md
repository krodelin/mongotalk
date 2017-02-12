A `MongoCollectionCommand` is a kind of `MongoCommand` which is executed in the context of/against a `MongoCollection`
It's responsibilty is to provide accessors for the collection to be executed against as well as providing the actual `#perform` implementation.
