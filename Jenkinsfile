
pipeline {
    agent any

    stages {

        stage ('Build') {
            fileLoader.fromGit('jenkinsfile/jenkinsfile', 'https://github.com/pAmanda/jenkinsfile.git', 'master', null, '').start()
        }
    }
}

	



