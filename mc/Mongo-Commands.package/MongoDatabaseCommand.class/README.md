A `MongoDatabaseCommand` is a kind of `MongoCommand` which is executed in the context of/against a `MongoDatabase`.
It's responsibilty is to provide accessors for the databases to be executed against as well as providing the actual `#perform` implementation.
