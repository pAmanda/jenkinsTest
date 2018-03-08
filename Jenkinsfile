pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
              echo 'branch: ${GIT_BRANCH}'
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}