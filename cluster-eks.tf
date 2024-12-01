resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids = [
        "subnet-0de6eab23c30e5cfe",
        "subnet-01b2ac74a27022a20",
        "subnet-04147ec367438c0af",
        "subnet-04eb67317140ac026",
        "subnet-075ea87e5f578d42c"
    ]
    security_group_ids = ["sg-05ce8e8d8ed25babe"]
  }


  # Adicionando tags pode ajudar na organização
  tags = {
    Name = "eks-cluster"
  }
}