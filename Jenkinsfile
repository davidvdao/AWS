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
  environment {
    aws_access_key = 'AKIAJ4XD6CXP6ADRSMGQ'
    aws_secret_key = '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'
  }
}