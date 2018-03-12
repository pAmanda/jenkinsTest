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
                echo 'Branch = ' + GIT_BRANCH
                sh 'mvn clean install -Dmaven.test.skip=true -Dmaven.javadoc.skip=true'
            }
        }

        stage ('Test') {
            when{
                expression { GIT_BRANCH == 'origin/master' }
            }
            steps {
                echo 'Branch = ' + GIT_BRANCH
                echo 'Initializing Test phase'
                sh 'mvn test'
            }
        }

        stage ('Analyse') {
            when{
                expression { GIT_BRANCH == 'origin/develop/**' || GIT_BRANCH == 'origin/master' }
            }
            steps {
                echo 'Branch = ' + GIT_BRANCH
                echo 'Initializing Analyse phase'
            }
        }

        stage ('Archive') {
            when{
                expression { GIT_BRANCH == 'origin/master' }
            }
            steps {
                echo 'Initializing Archive phase'
                echo 'mvn deploy -Dmaven.test.skip=true'

            }
        }

        stage ('Release') {
            when{
                expression { GIT_BRANCH == 'origin/master' && VERSION != NEXT_VERSION }
            }
            steps {
                echo 'Initializing Release phase'
                sh 'echo ${params.VERSION} e ${params.NEXT_VERSION}'
                sh 'mvn release:prepare release:perform -DreleaseVersion=${params.VERSION} -DdevelopmentVersion=${params.NEXT_VERSION}'
            }
        }

        stage ('Docker') {
            when{
                expression { GIT_BRANCH == 'origin/master' && VERSION != NEXT_VERSION }
            }
            steps {
                echo 'Initializing Docker phase'
                sh 'mvn package docker:build docker:push'
            }
        }
    }
}

	




