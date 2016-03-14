package org.bmbw.racedept

class ClinicGroup {

    String groupName
	String day
			
	static hasMany = [racers: Racer, coaches: Coach]
	static belongsTo = Clinic

    static constraints = {
		groupName blank: false
		day inList: ["Monday", "Tuesday", "Wednesday",
			"Thursday", "Friday", "Saturday", "Sunday" ]
    }
	
	
	String toString(){return "" + groupName + " " + day + ""}
}