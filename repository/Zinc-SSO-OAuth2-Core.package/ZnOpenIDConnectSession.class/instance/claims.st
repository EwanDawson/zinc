accessing
claims
	^ (JWSCompactSerializer new materialize: self idToken key: '' checkSignature: false) payload