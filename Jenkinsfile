pipeline {
  agent { 
    node { 
      label {"vpn-ams"}
    }
  }

  stages {
    stage ('build') {
      step {
        sh 'app/build.sh'
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