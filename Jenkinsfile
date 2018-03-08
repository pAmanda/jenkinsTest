pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              def branches = sh(returnStdout: true, script: "git branch --contains ${commitHash}")
              echo 'branch = branches'
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}