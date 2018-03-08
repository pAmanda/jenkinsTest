pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              branch = sh (
                script: 'git rev-parse --abbrev-ref HEAD',
                returnStdout: true
              ).trim()
              echo 'My branch is' + branch
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}