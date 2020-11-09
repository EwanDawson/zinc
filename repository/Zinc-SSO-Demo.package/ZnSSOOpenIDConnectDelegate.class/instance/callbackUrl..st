accessing
callbackUrl: request
	^ request host addPathSegment: (request mergedFields at: 'redirect-url')