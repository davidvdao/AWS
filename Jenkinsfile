pipeline {
  agent any
  stages {
    stage('precondition') {
      steps {
        echo 'precondition'
        git(url: 'https://github.com/davidvdao/AWS', branch: 'master')
        bat '''
          if exist z:\ ( net use z: /delete)
          net use z: \\54.82.119.60\Artifact /user:Administrator %password%
        '''
      }
    }
    stage('provision') {
      steps {
        echo 'packer'
        echo 'terraform'
      }
    }
  }
}
