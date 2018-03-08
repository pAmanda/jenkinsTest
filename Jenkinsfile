pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              echo 'branch: sh(returnStdout: true, script: "git branch --contains ${commitId}")'
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}