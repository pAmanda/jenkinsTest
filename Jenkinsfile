pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              echo 'My branch is' + sh '(script: 'git rev-parse --abbrev-ref HEAD', returnStdout: true).trim()'
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}