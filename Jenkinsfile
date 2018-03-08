pipeline {
    agent any
    stages{
        stage('Build'){
           node {
             echo 'Pulling...' + env.BRANCH_NAME
             checkout scm
          }

          when{
              expression { env.BRANCH_NAME == 'origin/feature/*'}
          }
           steps {
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}