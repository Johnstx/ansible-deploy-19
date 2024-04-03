
# creating dynamic ingress security groups
locals {
  security_groups = {
    ext-alb-sg = {
      name        = "ext-alb-sg"
      description = "for external loadbalncer"

    }

    # security group for bastion
    bastion-sg = {
      name        = "bastion-sg"
      description = "for bastion instances"
    }

    # security group for nginx
    nginx-sg = {
      name        = "nginx-sg"
      description = "nginx instances"
    }

    # security group for IALB
    int-alb-sg = {
      name        = "int-alb-sg"
      description = "IALB security group"
    }


    # security group for webservers
    webserver-sg = {
      name        = "webserver-sg"
      description = "webservers security group"
    }

    # security group for data-layer
    datalayer-sg = {
      name        = "datalayer-sg"
      description = "data layer security group"
    }
    compute-sg = {
      name        = "compute-sg"
      description = "compute security group"
    }
  }
}


# locals {
# 	security_groups = [
#             {
#                 name		= "ext_alb-sg"
#                 description	= "security group for external Application load balancer"
#             },
#             {	
#                 name		= "bastion-sg"
#                 description	= "security group for bastion"
#             },
#             {	
#                 name 		= "nginx-sg"
#                 description	= "security group for nginx"
#             },
#             {	
#                 name		= "int-alb-sg"
#                 description	= "security group for internal Application load balancer"
#             },
#             {	
#                 name		= "webserver-sg"
#                 description	= "security group for webservers"
#             },
#             {
#                 name		= "datalayer-sg"
#                 description = "security group for datalayer"
#             }
#     ]	
# }
