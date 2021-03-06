pipeline {
    agent any
    stages {
        stage('Example') {
            input {
                message "Let's promote?"
                ok 'Release!'
                parameters {
                    extendedChoice defaultValue: 'Static_Check, QA , Unit Test', description: '', descriptionPropertyValue: 'Static_Check, QA , Unit Test', multiSelectDelimiter: ',', name: 'AppChecks', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', value: 'Static_Check, QA , Unit Test', visibleItemCount: 5
                }
            }
            steps {
                echo " ${AppChecks}"
            }
        }
    }
}