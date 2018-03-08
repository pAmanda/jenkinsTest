pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                echo 'branch = ' + GIT_BRANCH
            }
        }
    }
}