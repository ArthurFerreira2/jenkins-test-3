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
        sh 'mvn clean package'
      }
    }
    stage('deploy war file in local docker engine'){
      steps{
        sh 'chmod -R 755 target/; docker-compose down; docker-compose up -d'
      }
    }
  }
}
