#========================EC2 instances============================

locals {
  websubnet_ids = concat([aws_subnet.stopnshop-prod-websubnet-1a.id], [aws_subnet.stopnshop-prod-websubnet-1b.id])
}


resource "aws_instance" "stopnshop-webserver" {
# Create one instance for each subnet
    count = 2
    ami = "ami-01581ffba3821cdf3"
    instance_type = "t2.micro"
    key_name = "demoinstance"
    subnet_id     = element(local.websubnet_ids, count.index)
    vpc_security_group_ids = ["${aws_security_group.stopnshop-webserver-sg.id}"]

  tags = {
    Name = "stopnshop-webserver${count.index}"
    Environment = "production"
    Project     = "stopnshop"
    Owner       = "kthadikaran@gmail.com"
  }
}
