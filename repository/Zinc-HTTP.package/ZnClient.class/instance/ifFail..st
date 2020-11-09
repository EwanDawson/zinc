options
ifFail: block
	"Set the block that will be executed if the request fails.
	The exception of the failure will be passed as argument."
	
	self optionAt: #ifFailBlock put: block