variable "region" {
  default = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID for EKS"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  default     = "web-app-cluster"
}

variable "node_group_name" {
  description = "Name of the node group"
  default     = "web-app-nodes"
}
