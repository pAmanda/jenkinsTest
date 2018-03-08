pipeline {
    agent any
    stages{
        stage('Build'){
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