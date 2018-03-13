node {
    stage('Example') {
        if (GIT_BRANCH != 'origin/hotfix') {
            echo 'I only execute on the master branch'
        } else {
            echo 'I execute elsewhere'
        }
    }
}