responses
oidcStart: request
	| html |
	html := self
		htmlPageTitled: 'OpenID Connect Login Demo'
		do: [ :stream |
			stream
				<< '<form id="oidc-login" action="oidc-login" method="post">';
				<< '<fieldset>';
				<< '<legend>Client Details</legend>';
				<< '<div>';
				<< '<label for="client-id">Client ID:</label>';
				<< '<input name="client-id" type="text" value="';
				<< (self clientId ifNil: '');
				<< '" required>';
				<< '</div>';
				<< '<div>';
				<< '<label for="client-secret">Client Secret:</label>';
				<< '<input name="client-secret" type="password" value="';
				<< (self clientSecret ifNil: '');
				<< '" required>';
				<< '</div>';
				<< '<div>';
				<< '<label for="redirect-url">Redirect URL:</label>';
				<< '<input name="redirect-url" type="text" value="';
				<< (self redirectUrl ifNil: '' ifNotNil: [ :url | url path ]);
				<< '" required>';
				<< '</div>';
				<< '</fieldset>';
				<< '<fieldset>';
				<< '<legend>Identity Provider</legend>';
				<< '<label for="google">Google</label>';
				<< '<input type="radio" id="google" name="identity-provider" value="google" checked="true">';
				<< '</fieldset>';
				<< '<div>';
				<< '<input name="login" type="submit" value="Login">';
				<< '</form>'].
	^ ZnResponse ok: (ZnEntity html: html)