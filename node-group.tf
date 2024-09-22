resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids = [
      "subnet-0348ab87b994ab0c9",
      "subnet-00d1d86211e2f89ae",
      "subnet-06559b6b476b01a93",
      "subnet-0cecdfd71a61d72b2",
      "subnet-039d2e450f5eff642"
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
