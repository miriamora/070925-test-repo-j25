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