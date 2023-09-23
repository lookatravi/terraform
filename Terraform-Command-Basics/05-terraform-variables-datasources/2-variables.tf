# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-2"
}

# AWS AMI ID
variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0d406e26e5ad4de53" # Amazon2 Linux AMI ID
}

# AWS EC2 instance type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"  
}

# AWS Instnce Key Pair
variable "instance_keypair" {
  description = "AWS Key Pair"
  type = string
  default = "terraform-keypari"
  
}

/*
# AWS Instance Count
variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}
*/