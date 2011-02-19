printing
forReferencePrintOn: aStream
	aStream
		nextPutAll: self disk;
		nextPut: $: