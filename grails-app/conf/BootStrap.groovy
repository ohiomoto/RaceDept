import org.bmbw.racedept.*

class BootStrap {

    def init = { servletContext ->
		
		def coach1 = new Coach(
			firstName: "Bode", 
			lastName: "Miller",
			gender: "Male")//,
			//birthDate: "12/12/2000")
		.save(failOnError: true)
		
		def coach2 = new Coach(
			firstName: "Ted",
			lastName: "Ligety",
			gender: "Male")
		.save(failOnError: true)
		
		def racer1 = new Racer(
			firstName: "Mike", 
			lastName: "Jones",
			gender: "Male",
			bibNumber: "21",
			type: "Ski",
			skillLevel: "4")
		.save(failOnError: true)
		
		def racer2 = new Racer(
			firstName: "Mathew", 
			lastName: "Jones",
			gender: "Male",
			bibNumber: "22",
			type: "Ski",
			skillLevel: "3")
		.save(failOnError: true)
		
		def racer3 = new Racer(
			firstName: "Kelly",
			lastName: "Smith",
			gender: "Male",
			bibNumber: "43",
			type: "Ski",
			skillLevel: "4")
		.save(failOnError: true)
		
		def racer4 = new Racer(
			firstName: "Donny",
			lastName: "Smith",
			gender: "Male",
			bibNumber: "44",
			type: "Ski",
			skillLevel: "2")
		.save(failOnError: true)
		
		def family1= new Family(
			familyName: "Jones")
		.save(failOnError: true)
		
		def family2= new Family(
			familyName: "Smith")
		.save(failOnError: true)
		
		def clinic1 = new Clinic(
			clinicName: "Tue Race Clinic",
			day: "Tuesday")
		.save(failOnError: true)
		
		def clinic2 = new Clinic(
			clinicName: "Thursday Race Clinic",
			day: "Thursday")
		.save(failOnError: true)
		
		def group1 = new ClinicGroup(
			groupName: "Group 1",
			day: "Tuesday")
		.save(failOnError: true)
		
		def group2 = new ClinicGroup(
			groupName: "Group 2",
			day: "Tuesday")
		.save(failOnError: true)
		
		def group3 = new ClinicGroup(
			groupName: "Group 1",
			day: "Thursday")
		.save(failOnError: true)
		
		def group4 = new ClinicGroup(
			groupName: "Group 2",
			day: "Thursday")
		.save(failOnError: true)
		
		family1.addToRacers(racer1)
		family1.addToRacers(racer2)
		family1.save(failOnError: true)
		
		family2.addToRacers(racer3)
		family2.addToRacers(racer4)
		family2.save(failOnError: true)
		
		group1.addToCoaches(coach1)
		group1.addToRacers(racer1)
		group1.addToRacers(racer2)
		group1.save(failOnError: true)
		
		group2.addToCoaches(coach2)
		group2.addToRacers(racer3)
		group2.addToRacers(racer4)
		group2.save(failOnError: true)
		
		clinic1.addToClinicGroups(group1)
		clinic1.save(failOnError: true)
		
		clinic2.addToClinicGroups(group2)
		clinic2.save(failOnError: true)
    }
    def destroy = {
    }
}
