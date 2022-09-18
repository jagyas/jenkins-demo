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
          
          script {
    LATEST_TASK_DEFINITION = sh(returnStdout: true, script: "/kaniko/executor --context `pwd` --verbosity debug --destination jagyas/service:latest --destination ${REGISTRY_USER}/${PROJECT}:${env.BRANCH_NAME.toLowerCase()}-${BUILD_NUMBER}").trim()
 }
        }
      }
    }
  }
}
