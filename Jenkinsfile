pipeline {
    agent any
    stages{
        stage('Build'){
           steps {
                script {  
                     parentBranches = '$(git rev-parse --abbrev-ref HEAD)'
                    lastCommit = sh(script: 'git rev-parse --abbrev-ref HEAD', returnStdout: true).trim()
                    echo "==> Common ancestor is ${ancestorCommit}, last commit is ${lastCommit}."
                }
          }
       }
   }
}