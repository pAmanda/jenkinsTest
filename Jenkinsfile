repository = "https://github.com/pAmanda/jenkinsfile.git"
script = "jenkinsFile"
branch = "master"

source = "master"
target = "stable"

node () {
    git clone: false, changelog: false, url: repository, branch: branch
    load script
}