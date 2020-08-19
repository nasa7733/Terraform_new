pipeline {
    agent any
       environment {
    SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }
  stages {
      stage('credentails') {
      steps {
        sh 'mkdir -p creds'
        sh 'echo  $SVC_ACCOUNT_KEY '
        sh 'ls'
        sh 'echo $SVC_ACCOUNT_KEY  > ./creds/cred.json'
        sh 'pwd'
        sh 'ls'
      			}
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
        
      
      
  
