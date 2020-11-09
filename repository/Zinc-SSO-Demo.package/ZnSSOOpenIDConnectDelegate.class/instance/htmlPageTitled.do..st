private
htmlPageTitled: title do: block
	^ String streamContents: [ :stream |
		stream
			<< '<!DOCTYPE html>
<html>
<head>
<title>';
			<< title;
			<< '</title>
<link rel="stylesheet" href="http://www.elementscss.com/css/elementscss.min.css">
</head>
<body>
<h1>';
			<< title;
			<< '</h1>'.
		block value: stream.
		stream << '</body></html>'] 