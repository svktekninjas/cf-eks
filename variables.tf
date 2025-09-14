variable "name" {
  description = "Name of the VPC and EKS Cluster"
  default     = "kodesystems-eks"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "vpc_id"
  type        = string
  default     = "vpc-0e0ba36fd1cca5339"
}

variable "vpc_cidr" {
  description = "vpc_cidr"
  type        = list(string)
  default     = ["172.26.0.0/16"]
}

variable "service_subnet0" {
  description = "service_subnet0"
  type        = string
  default     = "subnet-068466839e6791da5"
}

variable "service_subnet1" {
  description = "service_subnet1"
  type        = string
  default     = "subnet-0d3bbcc56df4e7ffe"
}

variable "service_subnet2" {
  description = "service_subnet2"
  type        = string
  default     = "subnet-0f63e617e25ce6add"
}

variable "eks_cluster_version" {
  description = "EKS Cluster version"
  default     = "1.30"
  type        = string
}

# RFC6598 range 100.64.0.0/10
# Note you can only /16 range to VPC. You can add multiples of /16 if required
variable "secondary_cidr_blocks" {
  description = "Secondary CIDR blocks to be attached to VPC"
  default     = ["100.64.0.0/16"]
  type        = list(string)
}