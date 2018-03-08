pipeline {
    agent any

    environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'h2'
    }

    stages {
        stage('Build') {
            steps {
                sh 'printenv'
            }
        }
    }
}