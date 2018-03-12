import hudson.model.*

def pipelineRepo = 'https://github.com/pAmanda/jenkinsfile.git'
def pipeline = fileLoader.fromGit('integration', pipelineRepo, 'master', null, '')

// to make pipeline ignore failed tests pass true to runPipeline function
pipeline.runPipeline(pipelineRepo)

	



