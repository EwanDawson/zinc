accessing
oidcLogin: request
	| parameters consumerData |
	parameters := request mergedFields.
	consumerData := ZnOAuth2ConsumerData key: (parameters at: 'client-id') secret: (parameters at: 'client-secret') redirectUrl: (self callbackUrl:request).
	session := ZnGoogleOpenIDConnectSession withConsumerData: consumerData.
	self map: (consumerData redirectUrl path) to: [ :callbackRequest | session handleAuthenticationCallback: callbackRequest mergedFields. ZnResponse redirect: (ZnUrl fromString: '/oidc-end') ].
	^ ZnResponse redirect: (session authenticationUrlWithState: self className)