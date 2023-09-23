# Terraform Output Values

# EC2 Instance Private IP
output "instance_ip_addr" {
  description = "The private IP address of the main server instance."
  value       = aws_instance.myec2vm.private_ip  
}

# EC2 Instance Public IP
output "instance_publicip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns" {
    description = "EC2 Instance Public IP"
    value = aws_instance.myec2vm.public_dns
}





 

