pipeline {
    agent any
    stages {
        stage('Build') {
            when{
                expression { GIT_BRANCH != '**/feature/*' }
            }
            steps {
                echo 'tesdfdsting'
                sh 'mvn clean package'
                archiveArtifacts artifacts: '**/*.jar', fingerprint: true
                build job: 'basic-build'
            }
        }
    }
}