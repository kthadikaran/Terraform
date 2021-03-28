variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "ap-southeast-1"
}

variable "vpccidrip" {
  type        = string
  description = "This is the IP Address range used for VPC."
}

variable "websubnetcidrip1a" {
  type        = string
  description = "This is the IP Address range used for web servers subnets."
}

variable "websubnetcidrip1b" {
  type        = string
  description = "This is the IP Address range used for web servers subnets."
}

variable "appsubnetcidrip1a" {
  type        = string
  description = "This is the IP Address range used for  application servers subnets."
}

variable "appsubnetcidrip1b" {
  type        = string
  description = "This is the IP Address range used for application servers subnets."
}

variable "dbsubnetcidrip1a" {
  type        = string
  description = "This is the IP Address range used for database servers subnets."
}

variable "dbsubnetcidrip1b" {
  type        = string
  description = "This is the IP Address range used for database servers subnets."
}

#EC2 Instances Security Groups variable details

variable "bastionserverports"{
  type        = list
  description = "This is the ports ranges allowed to bastion server."
}

variable "albsgports"{
  type        = list
  description = "This is the ports ranges allowed to web server."
}
variable "webservergports"{
  type        = list
  description = "This is the ports ranges allowed to web server."
}
variable "appervergports"{
  type        = list
  description = "This is the ports ranges allowed to web server."
}
variable "dbservergports"{
  type        = list
  description = "This is the ports ranges allowed to web server."
}
variable "egressports" {
  type        = list
  description = "This is the ports ranges allowed to web server."
}