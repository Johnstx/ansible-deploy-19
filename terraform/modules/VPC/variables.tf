
variable "region" {
    type = string
    description = "The region to deploy resources"  
}

variable "vpc_cidr" {
    type = string
    description  = "The VPC cidr"  
}

variable "enable_dns_support" {
    type = bool 
}

variable "enable_dns_hostnames" {
    type = bool
}

variable "preferred_number_of_public_subnets" {
    type = number
    description = "Number of public subnets"  
}

variable "preferred_number_of_private_subnets" {
    type = number
    description = "Number of private subnets"
}

variable "name" {
  type    = string
  default = "ACS"

}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}


variable "enable_classiclink" {
  type = bool
  default = false
}


variable "private_subnets" {
  type        = list(any)
  description = "List of private subnets"
}

variable "public_subnets" {
  type        = list(any)
  description = "list of public subnets"

}

variable "environment" {
  default = "true"
}