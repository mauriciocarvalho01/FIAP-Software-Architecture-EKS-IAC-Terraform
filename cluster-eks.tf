resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids = [
        "subnet-0775fa37d5a4c6906",
        "subnet-0678dace08e7599fd",
        "subnet-08fc78f1aa116d03c",
        "subnet-033f76781ae48d67c",
        "subnet-015e592fd7cfbd37b"
    ]
    security_group_ids = ["sg-0431a6ed03d44e2ae"]
  }


  # Adicionando tags pode ajudar na organização
  tags = {
    Name = "eks-cluster"
  }
}