pipeline {
    agent any
       environment {
    SVC_ACCOUNT_KEY = credentials('google-auth')
	             }
  stages {
   	   stage('credentails') {
     		 steps {
      		  sh 'mkdir -p creds'
			
			
      			}
      		}
    
        stage ('checkout'){
            steps {
                git branch: 'master', url: 'https://github.com/nasa7733/Terraform_new.git'
            }
        }
      
	stage('Set Terraform path') {
            steps {
                script {
                    def tfHome = tool name: 'Terraform'
                    env.PATH = "${tfHome}:${env.PATH}"
                }
                sh 'terraform --version'
		  
               
               
            }
        }
        
         stage('Provision infrastructure') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
                             
             
            }
        }
}
        
}
