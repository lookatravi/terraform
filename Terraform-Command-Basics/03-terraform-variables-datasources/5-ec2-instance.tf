# Create EC2 Instance
#aws_instance.myec2vm.public_ip (public_ip get from argument/attribute section)
resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amzlinux.id //using datasources
  #ami                   = var.ec2_ami_id //from variable or above one can be used from datasource
  instance_type          = var.instance_type // from variable
  key_name               = var.instance_keypair // from variable
  #count                  = var.ec2_instance_count // from variable
  user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to DevOps ! AWS Infra created using Terraform in us-east-2 Region</h1>" > /var/www/html/index.html
    EOF
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "myec2vm"
  }
}
