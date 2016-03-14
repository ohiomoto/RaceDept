package org.bmbw.racedept

class Clinic {
	
	String clinicName
	String day
	
	static hasMany = [clinicGroups: ClinicGroup]

	static constraints = {
		clinicName blank: false
		day inList: ["Monday", "Tuesday", "Wednesday",
			"Thursday", "Friday", "Saturday", "Sunday" ]
	}
	
	String toString(){return "" + clinicName + " " + day +""}
}
