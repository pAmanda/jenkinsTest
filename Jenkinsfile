pipeline {
    agent any
    stages{
        stage('Build'){
          when{
              expression { sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim() == '*/feature/*'}
          }
           steps {
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}