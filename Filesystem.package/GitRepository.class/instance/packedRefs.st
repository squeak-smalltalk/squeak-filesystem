accessing
packedRefs
	| f d s n |
	f := self baseDir resolve: 'packed-refs'.
	f exists ifFalse: [^ nil].
	
	d := Dictionary new.
	[f atEnd] whileFalse: [
		f peek = $#
			ifTrue: [f upTo: Character lf]
			ifFalse: [
				s := f upTo: Character space.
				n := f upTo: Character lf.
				d at: n put: (GitObjectSignature from: s)]].
	f close.
	^ d