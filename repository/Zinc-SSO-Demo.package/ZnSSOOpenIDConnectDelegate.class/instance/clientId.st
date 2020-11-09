accessing
clientId
	^ self session ifNotNil: [ :thisSession | thisSession consumerData key ]