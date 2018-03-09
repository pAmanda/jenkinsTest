pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    }
    tools {
        maven 'Maven 3.5.2'
        jdk 'jdk8'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

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
