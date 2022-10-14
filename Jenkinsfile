pipeline {
  agent { 
    node { 
      label {"vpn-ams"}
    }
  }

  stages {
    stage ('build') {
      sh 'app/build.sh'
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