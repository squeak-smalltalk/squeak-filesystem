class initialization
initialize
	Resolver := FSInteractiveResolver new.
	Resolver addResolver: FSSystemResolver new.