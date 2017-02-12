`MongoListCollectionsCommand` represents a `listCollections` command for Mongo databases. It's executed against a `MongoDatabase`  and return a list of `MongoConnection`. It's using a `Mongo` instance to perform the actual `MongoQuery`.

If you just want to get all connections you can use the convenience method  `MongoDatabase>>#listCollections`.

If you need to add additonal filters you create an instance, configure it and then perform it:

```
command := db listCollectionsCommand
	filterName: 'a collection name';
	yourself.
result := command perform.
```

The following filters are available:

 * `#filterName` (String): Filter on the collection name
 * `#filterCapped` (Boolean): Filter on (non-) capped Collections
 * `#filterAutoIndexId` (Boolean): Filter on (non-) autoIndexId Collections
 * `#filterSize` (Number): Filter on collection size (bytes)
 * `#filterMax` (Number): Filter on collection size (# documents)
 * `#filterFlags` (Number): 
     - `0` corresponds to *usePowerOf2Sizes* flag set to `false` and *noPadding* flag set to `false`.
     - `1` corresponds to *usePowerOf2Sizes* flag set to `true` and *noPadding* flag set to `false`.
     - `2` corresponds to *usePowerOf2Sizes* flag set to `false` and *noPadding* flag set to `true`.
     - `3` corresponds to *usePowerOf2Sizes* flag set to `true` and *noPadding* flag set to `true`.
 * `#filterStorageEngine` (Document): Filter on collection storage engine (options)
