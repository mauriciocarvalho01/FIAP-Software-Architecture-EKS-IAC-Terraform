resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids      = [
    "subnet-0775fa37d5a4c6906",
    "subnet-0678dace08e7599fd",
    "subnet-08fc78f1aa116d03c",
    "subnet-033f76781ae48d67c",
    "subnet-015e592fd7cfbd37b"
  ]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["t3.medium"]

  # Configuração adicional, como tags
  tags = {
    Name = "${var.cluster_name}-node-group"
  }
}
