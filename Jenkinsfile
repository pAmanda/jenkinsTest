node {
   def test = fileLoader.fromGit('jenkinsfile/helloworld', 
        'https://github.com/pAmanda/jenkinsfile.git', 'master', null, '')

   stage 'Run method from the loaded file'
   test.printHello();
}