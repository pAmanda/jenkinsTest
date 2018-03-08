pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
                script {  
                     parentBranches = '$(git rev-parse --abbrev-ref HEAD)'
                    lastCommit = sh(script: 'git rev-parse --abbrev-ref HEAD', returnStdout: true).trim()
                    echo "==> parentBranches is ${parentBranches}, last commit is ${lastCommit}."
                }
                checkout scm
                echo "My branch is: ${env.BRANCH_NAME}"
          }
       }
   }
}