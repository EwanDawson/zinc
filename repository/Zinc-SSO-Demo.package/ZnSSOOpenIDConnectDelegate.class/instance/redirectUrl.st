accessing
redirectUrl
	^ self session ifNotNil: [ :thisSession | thisSession consumerData redirectUrl ]