activation
manageInteractive: arguments
	| dir |
	dir := arguments first.
	dir := dir asFileReference isRelative
		ifTrue: [ (OSProcess thisOSProcess environmentAt: 'PWD') asFileReference / dir ]
		ifFalse: [ dir asFileReference ].
	^ dir isDirectory
		ifTrue: [ SCBrowser openOn: dir.
			true ]
		ifFalse: [ false ]