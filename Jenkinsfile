pipeline {
    agent any
    stages{
        stage('Build'){
          echo 'branch = ${env.BRANCH_NAME}'
          when{
              expression { env.BRANCH_NAME == 'feature/*'}
          }
           steps {
              echo 'Init basic-build'
              build job: 'basic-build'           
           }
        }
    }
}