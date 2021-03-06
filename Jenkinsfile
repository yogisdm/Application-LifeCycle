pipeline {
    agent any
    stages {
        stage('Input Arguments') {
            input {
                message "Let's promote?"
                ok 'Release!'
                parameters {
                    extendedChoice defaultValue: 'Static_Check, QA , Unit Test', description: '', descriptionPropertyValue: 'Static_Check, QA , Unit Test', multiSelectDelimiter: ',', name: 'AppChecks', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', value: 'Static_Check, QA , Unit Test', visibleItemCount: 5
                    choiceParam('Success_Email',[],'')
					choiceParam('Failure_Email',[],'')
				}
            }
            steps {
                echo " ${AppChecks}"
            }
        }
		
		stage('Git pull') {
		   steps{
		    git init
		    git branch master,
			    url: 'https://github.com/yogisdm/Application-test-code.git' 
		   }
		
		}
    }
}