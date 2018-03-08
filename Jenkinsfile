pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              echo 'branch: ${env.BRANCH_NAME}'
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}