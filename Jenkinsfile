pipeline {
  agent any
  stages {
    stage('precondition') {
      steps {
        echo 'precondition'
        echo '${aws_access_key}'
        echo '${aws_secret_key}'
        echo '${artifact_pass}'
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
    aws_access_key = credentials('AWS_ACCESS_KEY_ID')
    aws_secret_key = credentials('AWS_SECRET_ACCESS_KEY')
    //artifact_pass = credentials('my-prefined-secret-text') 
  }
}
