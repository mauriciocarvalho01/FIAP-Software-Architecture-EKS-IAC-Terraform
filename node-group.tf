resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids = [
      "subnet-0de6eab23c30e5cfe",
      "subnet-01b2ac74a27022a20",
      "subnet-04147ec367438c0af",
      "subnet-04eb67317140ac026",
      "subnet-075ea87e5f578d42c"
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
