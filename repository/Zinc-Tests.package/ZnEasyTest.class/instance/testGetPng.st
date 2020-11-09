testing
testGetPng
	| url result |
	self flag: #flakyTest.
	self skip.
	
	url := 'http://pharo.org/files/pharo.png'.
	result := ZnEasy getPng: url.
	self assert: result isForm