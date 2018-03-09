pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultValue: '0.0.1-SNAPSHOT', description: 'Número da versão que será fechada.')
        string(name: 'NEXT_VERSION', defaultValue: '0.0.2-SNAPSHOT', description: 'Próxima versão de desenvolvimento.')
    }

    stages {

        stage ('Build') {
            steps {
                echo 'Initializing Build phase'
                sh 'mvn clean install -Dmaven.test.skip=true -Dmaven.javadoc.skip=true'
            }
        }

        stage ('Test') {
            when{
                expression { GIT_BRANCH == '**/develop/*' || GIT_BRANCH == '**/master/*' }
            }
            steps {
                echo 'Initializing Test phase'
                sh 'mvn test'
            }
        }

        stage ('Analyse') {
            when{
                expression { GIT_BRANCH == '**/develop/*' || GIT_BRANCH == '**/master/*' }
            }
            steps {
                echo 'Initializing Analyse phase'
                sh 'mvn sonar:sonar'
            }
        }

        stage ('Archive') {
            when{
                expression { GIT_BRANCH == '**/master/*' }
            }
            steps {
                echo 'Initializing Analyse phase'
                sh 'mvn deploy -Dmaven.test.skip=true'
            }
        }

        stage ('Release') {
            when{
                expression { GIT_BRANCH == '**/master/*' && VERSION != NEXT_VERSION }
            }
            steps {
                echo 'Initializing Release phase'
                sh 'mvn release:prepare release:perform -DreleaseVersion=VERSION -DdevelopmentVersion=NEXT_VERSION'
            }
        }

        stage ('Docker') {
            when{
                expression { GIT_BRANCH == '**/master/*' && VERSION != NEXT_VERSION }
            }
            steps {
                echo 'Initializing Docker phase'
                sh 'mvn package docker:build docker:push'
            }
        }
    }
}

	




