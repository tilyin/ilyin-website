pipeline {
  agent { 
    node { 
      label "vpn-ams"
    }
  }

  stages {
    stage ('build') {
      steps {
        sh 'cd app'
        sh './build.sh'
      }      
    }
  }

  post { 
    unsuccessful { 
        echo 'unsuccessful pipeline completion'
    }
    success {
      echo 'Successful pipeline completion'
    }
  }
}