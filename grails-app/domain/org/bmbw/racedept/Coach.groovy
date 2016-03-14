package org.bmbw.racedept

class Coach extends Person {
	
	//static belongsTo = ClinicGroup
		
    static constraints = {
    }
	
	String toString(){return "" + firstName + " " + lastName + ""}
}
