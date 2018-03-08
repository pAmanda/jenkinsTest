pipeline {
    agent any
    stages {
        stage('Build') {
            when{
                expression { GIT_BRANCH != '**/feature/*' }
            }
            steps {
                echo 'testindsddsg' 
                build job: 'multipleJob'
            }
        }
    }
}