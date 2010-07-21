initialize-release
forType: aString  
 ^ self allSubclasses
       detect: [ :class | aString isNil not and: [class typeCode = aString] ]
       ifNone: [ self error: 'Invalid type code: ' , aString printString ]