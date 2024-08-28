pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "eu-west-2"
    }
    stages {
        stage('Checkout SCM'){
            steps{
                script{
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/clement2019/terraform-jenkins-deploy-aws-eks.git']])
                }
            }
        }
         
        stage('Initializing Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform init --upgrade'
                    }
                }
            }
        }
        stage('Formatting Terraform Code now'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform fmt'
                    }
                }
            }
        }
        stage('Validating Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform validate'
                    }
                }
            }
        }
        stage('Previewing the Infra using Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform plan'
                    }
                    input(message: "Are you sure to proceed?", ok: "Proceed")
                }
            }
        }
        stage('Creating/Destroying an EKS Cluster'){
            steps{
                script{
                    dir('EKS') {
                        sh 'terraform destroy'
                        //sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
        stage('Deploying Nginx Application') {
            steps{
                script{
                    dir('maual-EKS/Kubernetesfiles') {
                        sh 'echo "starting afresh"'
                        //sh "kubectl get ns"
                        //sh 'kubectl version --client'
                        //sh 'eks version'
                        //sh 'eksctl get cluster'
                        //sh 'aws eks update-kubeconfig --name my-eks-cluster-210'
                        //sh 'kubectl config current-context'
                        //sh 'eksctl get cluster'
                        //sh "kubectl get ns"
                        //sh 'kubectl apply -f deployment.yaml'
                        //sh 'kubectl apply -f service.yaml'


                    }
                    
                    
                    //dir('EKS/ConfigurationFiles') {
                       // sh "kubectl get ns"
                        //sh 'kubectl version --client'
                        //sh 'eks version'
                       // sh 'eksctl get cluster'
                        //sh 'aws eks update-kubeconfig --name my-eks-cluster-209'
                        //sh 'kubectl config current-context'
                        //sh 'eksctl get cluster'
                        //sh "kubectl get ns"
                       // sh 'kubectl apply -f deployment.yaml'
                        //sh 'kubectl apply -f service.yaml'
                    }
                }
            }
        }
    }
}
