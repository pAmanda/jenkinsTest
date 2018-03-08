pipeline {
    agent any
    stages{
        stage('Build'){
          when{
              expression { sh(returnStdout: true, script: "git branch --contains ${commitId}") == '*/feature/*'}
          }
           steps {
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}