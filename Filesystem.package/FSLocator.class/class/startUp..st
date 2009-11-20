class initialization
startUp: resuming
	resuming ifTrue:
		[Resolver := FSInteractiveResolver new.
		Resolver addResolver: FSSystemResolver new.
		Resolver addResolver: FSPlatformResolver forCurrentPlatform]
