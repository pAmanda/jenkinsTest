pipeline {
    agent any
    stages {
        stage('Build') {
            when{
                expression { GIT_BRANCH != '**/feature/*' }
            }
            steps {
                echo 'testing'
                sh 'mvn clean install'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
                build job: 'basic-build'
            }
        }
    }
}