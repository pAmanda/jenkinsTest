repositoryUrl = "https://github.com/pAmanda/jenkinsfile.git"
script = "jenkinsFile"
branchName = "master"

node () {
    git url: repositoryUrl, credentialsId: "git-credentials", branch: branchName
    load script    
}