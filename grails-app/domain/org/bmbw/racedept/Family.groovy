package org.bmbw.racedept

class Family {
	
	String familyName
	
	static hasMany = [racers: Racer]
	
	static constraints = {
		familyName blank: false
    }
	
	String toString(){return familyName}
}
