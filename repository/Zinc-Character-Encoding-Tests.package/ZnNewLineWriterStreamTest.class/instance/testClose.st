tests
testClose 

	| string fs fileReference znstream |

	fs := FileSystem memory.
	fileReference := fs / 'test.txt'.
	string := String streamContents: [ :stream |
		stream 
			<< 'abcčřž';
			cr ].
	znstream := ZnNewLineWriterStream on: fileReference writeStream.
	znstream forLf.
	[ znstream nextPutAll: string ]
		ensure: [ znstream close ].
	string at: string size put: Character lf.
	self assert: fileReference contents equals: string.