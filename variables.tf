variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "tech-challenge-fiap"
}

variable "eks_cluster_role_arn" {
  description = "ARN da Role IAM pré-existente para o cluster EKS"
  type        = string
  default = "arn:aws:iam::610703356069:role/LabRole"
}

variable "eks_node_role_arn" {
  description = "ARN da Role IAM pré-existente para os nós do EKS"
  type        = string
  default = "arn:aws:iam::610703356069:role/LabRole"
}


