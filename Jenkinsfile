
stage 'test'	
def helloworld = fileLoader.fromGit('jenkinsfile/integration.groovy', 
        'https://github.com/pAmanda/jenkinsfile.git', 'master', null, '')

stage 'Run method from the loaded file'
helloworld.start()

	



