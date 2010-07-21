tests
testNow
	| stamp now |
	stamp := self defaultStamp.
	now := TimeStamp now.
	
	self assert: stamp timeStamp <= now.	
	self assert: stamp name = 'Homer Simpson'.
	self assert: stamp email = 'homer@nuke.com'