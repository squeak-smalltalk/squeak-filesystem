as yet unclassified
testBreadthFirst
	| references |
	references := FSCollectVisitor breadthFirst: self root.
	self 
		assertReferences: references
		are: #(
				'/alpha'
				'/alpha/beta'
				'/alpha/epsilon'
				'/alpha/beta/delta'
				'/alpha/beta/gamma'
				'/alpha/epsilon/zeta'
			)