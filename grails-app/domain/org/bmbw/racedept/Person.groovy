package org.bmbw.racedept

class Person {
	
	String firstName
	String lastName
	String gender
	Date birthDate
	String comment
		
	static constraints = {
		firstName blank: false
		lastName blank:false
		gender inList: ["Male","Female"], nullable: true
		birthDate nullable: true
		comment nullable: true
	}
	
	//String toString() {return [firstName, lastName]}
}
