

# launch template for wordpress

resource "aws_launch_template" "wordpress-launch-template" {
  image_id               = var.ami-web
  instance_type          = "t2.micro"
  vpc_security_group_ids = var.web-sg

  iam_instance_profile {
    name = var.instance_profile
  }

  key_name = var.keypair


  placement {
    availability_zone = "random_shuffle.az_list.result"
  }

  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"

    tags = merge(
    var.tags,
    {
      Name = "wordpress-launch-template"
    },
  )

  }
   
    # create a file called wordpress.sh and copy the wordpress userdata from project 15 into it.
  user_data = filebase64("${path.module}/wordpress.sh")
}


# launch template for tooling
resource "aws_launch_template" "tooling-launch-template" {
  image_id               = var.ami-web
  instance_type          = "t2.micro"
  vpc_security_group_ids = var.web-sg

  iam_instance_profile {
    name = var.instance_profile
  }

  key_name = var.keypair


  placement {
    availability_zone = "random_shuffle.az_list.result"
  }

  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"

  tags = merge(
    var.tags,
    {
      Name = "tooling-launch-template"
    },
  )
  }
  
  # create a file called tooling.sh and copy the tooling userdata from project 15 into it
  user_data = filebase64("${path.module}/tooling.sh")
}
