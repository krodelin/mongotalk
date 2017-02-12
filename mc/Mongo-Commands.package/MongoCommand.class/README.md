A `MongoCommand`is an *abstract super class* for all "objectified" Mongo Commands.

It's responsible to provide common functionality like converting to a query (`#asQuery') and cursor parsing (`#parseCursorReply:`) as well as defining the required methods overridden by subclasses. The main methods to implement in subclasses  are `#commandName` ( a `String`) and `#commandArguments` (a `Dictionary`). In some commands you may also need to implement `#commandNameValue' .

It's exectued against a `MongoDatabase` using '#perform' (which converts this to a `MongoQuery` before).