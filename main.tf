resource "aws_iam_user" "user1" {
  name = "user1"
}

resource "aws_iam_group" "dev-group" {
  name = "dev-group"
}

resource "aws_iam_user_group_membership" "user1:dev-group" {
  user = aws_iam_user.user1.name
  groups = [ aws_iam_group.dev-group.name ]
}


resource "aws_lightsail_instance" "lightsaber" {
  name = "lightsaber"
  availability_zone = "us-east-1a"
  bundle_id = "nano_3_0"
  blueprint_id = "amazon_linux_2"
  #key_pair_name = "devkey"
  tags = {
    env = "dev"
    createdby = "notClickOps"
  }
}