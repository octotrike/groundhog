tests
testExamples
	"Create specific instances of the class I test"
	| atomOnly nameOnly both |

	atomOnly := self classToBeTested instanceWithAtom.
	self
		deny:   [ atomOnly atom isNil ];
		assert: [ atomOnly name isNil ].

	nameOnly := self classToBeTested namedInstance.
	self
		assert: [ nameOnly atom isNil ];
		deny:   [ nameOnly name isNil ].

	both := self classToBeTested namedInstanceWithAtom.
	self
		deny:   [ both atom isNil ];
		deny:   [ both name isNil ]
