pipeline {
  agent any
  
  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }
  stages {
    stage('precondition') {
      steps {
        echo 'precondition'
        echo "${env.AWS_ACCESS_KEY_ID}"
        echo "${env.AWS_SECRET_ACCESS_KEY}"
        echo "${env.AWS_Artifact_Pass}"
        git(url: 'https://github.com/davidvdao/AWS', branch: 'master')
        bat 'if exist z:\\ ( net use z: /delete) & net use z: \\\\54.82.119.60\\Artifact /user:Administrator "${env.AWS_Artifact_Pass}"'
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
