pipeline {
    agent {
        docker { image 'cthulhuology/carton' }
    }
    stages {
        stage('Test') {
            steps {
                sh '''
                    echo "Running tests..."
                    carton install --deployment
                    prove -lv t
                '''
            }
        }
    }
}
