// Jenkinsfile

// Definición del pipeline
pipeline {
    agent any

    stages {
        stage('Limpiar') {
            steps {
                cleanWs()
            }
        }
        stage('Clonar Repositorio') {
            steps {
                sh 'git clone https://github.com/ChristianMendezAcs/jenkins-testing-mio.git'
                sh 'cd jenkins-testing-mio && docker build . -t nombre-de-la-imagen:latest'
            }
        }

        stage('Ejecutar Contenedor') {
            steps {
                script {
                    sh "docker run -d -p 5000:5000 nombre-de-la-imagen:latest"
                    echo 'Esperando a que Flask inicie en http://localhost:5000...'
                }
            }
        }

        stage('Desplegar') {
            steps {
                echo 'Desplegar en producción...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline ejecutado exitosamente!'
        }
        failure {
            echo 'El pipeline ha fallado. Revisar los registros.'
        }
    }
}