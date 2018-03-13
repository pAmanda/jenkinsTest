node {
   def test = fileLoader.fromGit('helloworld', 
        'https://github.com/pAmanda/jenkinsfile.git', 'master', null, '')

   stage 'Run method from the loaded file'
   test.printHello();
}