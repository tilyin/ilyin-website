pipeline {
  agent { 
    node { 
      label "vpn-ams"
    }
  }

  stages {
    stage ('build') {
      steps {
        dir('app') {
          sh './build.sh'
        }
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