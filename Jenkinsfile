pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mrs Amanda', description: 'Who should I say hello to?')
        string(name: 'FULLNAME', defaultValue: 'Amanda', description: 'Who should I say hello to?')
    }

    stages {

        stage ('Build') {
            when{
                expression { GIT_BRANCH != '**/feature/*' }
            }
            steps {
                sh 'mvn clean install -DskipTests'
            }
            
        }
    }
}
