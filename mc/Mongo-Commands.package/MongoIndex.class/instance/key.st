accessing
key
	^ key ifNil: [ key := self defaultKey ]