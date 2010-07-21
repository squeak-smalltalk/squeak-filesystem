accessing
resolveRef: name
"From the git-rev-parse manpage:
            1. if $GIT_DIR/<name> exists, that is what you mean (this is usually useful only for HEAD, FETCH_HEAD, ORIG_HEAD and MERGE_HEAD);
            2. otherwise, $GIT_DIR/refs/<name> if exists;
            3. otherwise, $GIT_DIR/refs/tags/<name> if exists;
            4. otherwise, $GIT_DIR/refs/heads/<name> if exists;
            5. otherwise, $GIT_DIR/refs/remotes/<name> if exists;
            6. otherwise, $GIT_DIR/refs/remotes/<name>/HEAD if exists."
	| fullName havePackedRefs packedRefs result |	
	havePackedRefs := false.
	packedRefs := nil.
	#(	''
		'refs/'
		'refs/tags/'
		'refs/heads/'
		'refs/remotes/'
		"We don't do the last case (number 6) from the manual yet."
	) do: [:prefix |
		fullName := prefix, name.
		result := self resolveLooseRef: fullName.
		result ifNotNil: [^ result].
		havePackedRefs ifFalse: [packedRefs := self packedRefs. havePackedRefs := true].
		packedRefs ifNotNil: [
			result := packedRefs at: fullName ifAbsent: [nil].
			result ifNotNil: [^ result]]].
	^ nil