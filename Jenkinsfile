pipeline {
    agent any
    stages {
        stage('Build') {
            when{
                expression { GIT_BRANCH != 'origin/feature/*' }
            }
            steps {
                sh 'printenv'
                echo 'branch = ' + GIT_BRANCH
            }
        }
    }
}