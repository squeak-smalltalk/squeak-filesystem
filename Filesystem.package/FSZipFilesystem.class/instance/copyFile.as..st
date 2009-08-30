private
copyFile: aZipMember as: aString
	^ aZipMember class 
		newFromString: aZipMember contents 
		named: aString