pipeline {
    agent any 
    stages {
        
        stage('---Version---') { 
            steps {
                sh 'mvn -version'
            }
        }   
                     
        stage('---Clean---') { 
            steps {
                sh 'mvn clean'
            }
        }
        
        stage('---Test---') { 
            steps {
                sh 'mvn test'
            }
        }
        
        stage('---Package---') { 
            steps {
                sh 'mvn assembly:single'
            }
        }
        
    }
}
