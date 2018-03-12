
pipeline {
    agent any

    stages {

        def jenkinsFile
        stage ('Build') {
           jenkinsFile = fileLoader.fromGit('jenkinsfile/jenkinsfile', 'https://github.com/pAmanda/jenkinsfile.git', 'master', null, '')
        }
        jenkinsFile.start()
    }
}

	



