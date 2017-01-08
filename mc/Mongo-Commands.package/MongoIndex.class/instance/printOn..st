printing
printOn: aStream
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		print: self name;
		nextPut: $)