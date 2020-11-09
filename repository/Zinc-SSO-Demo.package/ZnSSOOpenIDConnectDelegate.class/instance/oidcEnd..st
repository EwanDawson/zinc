accessing
oidcEnd: request
	| html |
	html := self htmlPageTitled: 'OpenID Connect Login Success' do: [ :stream |
		stream
			<< '<h2>Success!</h2>'].
	^ ZnResponse ok: (ZnEntity html: html)