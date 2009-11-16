as yet unclassified
testPreorder
	| references |
	references := FSCollectVisitor preorder: self root.
	self 
		assertReferences: references
		are: #(
				'/alpha'
				'/alpha/beta'
				'/alpha/beta/delta'
				'/alpha/beta/gamma'
				'/alpha/epsilon'
				'/alpha/epsilon/zeta'
			)