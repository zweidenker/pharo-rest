public
handleRequest: request
	| handler |
	handler := self prefixDictionary 
		at: request uri firstPathSegment 
		ifAbsent: [ ^ ZnResponse notFound: request uri ].	
	request uri removeFirstPathSegment.
	^ handler isBlock 
		ifTrue: [ handler value: request ]
		ifFalse: [ handler handleRequest: request ].

