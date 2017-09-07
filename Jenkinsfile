pipeline {
  agent any
  stages {
    stage('precondition') {
      steps {
        echo 'precondition'
        echo "${env.AWS_ACCESS_KEY_ID}"
        echo "${env.AWS_SECRET_ACCESS_KEY}"
        echo "${env.AWS_ARTIFACT_PASS}"
        git(url: 'https://github.com/davidvdao/AWS', branch: 'master')
        bat 'if exist z:\\ ( net use z: /delete) & net use z: \\\\54.82.119.60\\Artifact /user:Administrator "${env.AWS_ARTIFACT_PASS}"'
        bat "del /f /q C:\\TABuild\\* & copy 'Z:\\TABuild' 'C:\\TABuild'"
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
    AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    AWS_ARTIFACT_PASS = credentials('AWS_ARTIFACT_PASS')
  }
}
