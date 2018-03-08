pipeline {
    agent any
    stages {
        stage('Build') {
            when{
                expression { GIT_BRANCH != '**/feature/*' }
            }
            steps {
                build job: 'basic-build'
            }
        }
    }
}