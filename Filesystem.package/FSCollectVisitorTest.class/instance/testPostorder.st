as yet unclassified
testPostorder
	| references |
	references := FSCollectVisitor postorder: self root.
	self 
		assertReferences: references
		are: #(
				'/alpha/beta/delta'
				'/alpha/beta/gamma'
				'/alpha/beta'
				'/alpha/epsilon/zeta'
				'/alpha/epsilon'
				'/alpha'
			)