pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git '<your-github-repo-url>'
            }
        }
        stage('Build') {
            steps {
                script {
                    sh './gradlew build'
                    sh 'docker build -t https://github.com/wajih-daboub/PFA-everience.git/spring-petclinic:latest .'
                    sh 'docker push https://github.com/wajih-daboub/PFA-everience.git/spring-petclinic:latest'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'kubectl apply -f deployment.yaml'
                }
            }
        }
    }
}
