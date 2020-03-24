pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'deploying...'
        sh 'go run epamlabs.go'
      }
    }

  }
}