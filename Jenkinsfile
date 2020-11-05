pipeline {
  agent any
  tools{
    maven 'maven'
  }
  stages {
    stage('checking maven installation'){
      steps{
        sh 'mvm -v'
      }
    }
    stage('building java project'){
      steps{
        sh 'mvm -clean package'
      }
    }
  }
}
