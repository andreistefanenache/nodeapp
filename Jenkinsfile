pipeline {
    agent any
    environment {
         DOCKER_LOGIN=credentials('DOCKER_LOGIN')
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ${DOCKER_LOGIN_USR}/nodeapp .'
                sh 'docker login -u ${DOCKER_LOGIN_USR} -p 
${DOCKER_LOGIN_PSW}'
                sh 'docker push ${DOCKER_LOGIN_USR}/nodeapp'
            }
        }
    }
}
