pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
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
