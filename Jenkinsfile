pipeline {
    agent any
    stages {
        stage('Input Arguments') {
            input {
                message "Let's promote?"
                ok 'Release!'
                parameters {
                    extendedChoice defaultValue: 'Static_Check, QA , Unit Test', description: '', descriptionPropertyValue: 'Static_Check, QA , Unit Test', multiSelectDelimiter: ',', name: 'AppChecks', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', value: 'Static_Check, QA , Unit Test', visibleItemCount: 5
                    string defaultValue: 'abc@gmail.com', description: '', name: 'Success_Email', trim: false
					string defaultValue: 'abc@gmail.com', description: '', name: 'Failure_Email', trim: false

				}
            }
            steps {
                echo " ${AppChecks}"
            }
        }
		
		stage('Git pull') {
		   steps{
		    git branch: 'master',
			    url: 'https://github.com/yogisdm/Application-test-code.git' 
		   }
		
		}
	stage('Is this run required?') {
	   steps {
	   def get = new URL("https://calendarific.com/api/v2/holidays?&api_key=d20d05ccb411d9ce3b56b6549 71e17a29b0aa1ed&country=IN&year=2021 ").openConnection();
       def getRC = get.getResponseCode();
       println(getRC);
        if(getRC.equals(200)) {
        println(get.getInputStream().getText());
}
	   }
	}
    }
}