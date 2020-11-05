pipeline {
  agent any
  tools{
    maven 'maven'
  }
  stages {
    stage('checking maven installation'){
      steps{
        sh 'mvn -v'
      }
    }
    stage('building java project'){
      steps{
        sh 'mvn -clean package'
      }
    }
  }
}
