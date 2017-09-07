pipeline {
  agent any
  stages {
    stage('precondition') {
      steps {
        echo 'precondition'
        git(url: 'https://github.com/davidvdao/AWS', branch: 'master')
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