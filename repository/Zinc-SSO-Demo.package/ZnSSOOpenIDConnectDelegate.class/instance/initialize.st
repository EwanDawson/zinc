accessing
initialize

	super initialize.
	
	self prefixMap
		at: 'oidc-start' put: #oidcStart: ;
		at: 'oidc-login' put: #oidcLogin: ;
		at: 'oidc-end' put: #oidcEnd: