package org.bmbw.racedept

class Racer extends Person {
	
	String type
	String skillLevel
	Long bibNumber = 0L
		
	Family family
	Clinic clinic
	ClinicGroup clinicGroup

    static constraints = {
		bibNumber nullable: true
		type inList: ["Ski", "Snowboard"], nullable: true
		skillLevel inList: ["0", "1", "2", "3", "4"], nullable: true
		family blank: true, nullable: true
		clinic blank: true, nullable: true
		clinicGroup blank: true, nullable: true
    }
	
	String toString(){return "" + firstName + " " + lastName + ", " + type + ", " + skillLevel + "" }
}
