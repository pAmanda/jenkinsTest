pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
                script {  
                     parentBranches = '$(git rev-parse --abbrev-ref HEAD)'
                    lastCommit = sh(script: 'git branch', returnStdout: true).trim()
                    echo "==> parentBranches is ${parentBranches}, last commit is ${lastCommit}."
                }
          }
       }
   }
}