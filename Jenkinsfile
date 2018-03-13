repositoryUrl = "https://github.com/buildit/jenkins-pipeline-examples.git"
script = "pipelines/meta-pipeline.groovy"
branch = "development"

source = "development"
target = "stable"

node () {
    git url: repositoryUrl, credentialsId: "git-credentials", branch: branch
    load script    
}