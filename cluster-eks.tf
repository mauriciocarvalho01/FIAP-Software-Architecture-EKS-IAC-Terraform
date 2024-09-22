resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids = [
        "subnet-0348ab87b994ab0c9",
        "subnet-00d1d86211e2f89ae",
        "subnet-06559b6b476b01a93",
        "subnet-0cecdfd71a61d72b2",
        "subnet-039d2e450f5eff642"
    ]
    security_group_ids = ["sg-0520d225f62dc2bc1"]
  }


  # Adicionando tags pode ajudar na organização
  tags = {
    Name = "eks-cluster"
  }
}