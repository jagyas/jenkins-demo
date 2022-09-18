pipeline {
  agent {
    kubernetes {
      defaultContainer "kaniko"
      yamlFile "jenkins-pod.yaml"
    }
  }
  environment {
    PROJECT = "service"
    REGISTRY_USER = "jagyas"
  }
  stages {
    stage("Build") {
      steps {
        container("kaniko") {
          sh """echo "hello" """
        }
      }
    }
  }
}
