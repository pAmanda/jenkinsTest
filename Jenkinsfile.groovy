repositoryUrl = "https://github.com/pAmanda/jenkinsfile.git"
script = "jenkinsFile"
branch = "master"

source = "development"
target = "stable"

node () {
    git url: repositoryUrl, credentialsId: "git-credentials", branch: branch
    load script    
}