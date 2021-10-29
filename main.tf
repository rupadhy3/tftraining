resource "aws_instance" "myservers" {
   ami = "${ var.environment == "prod" ? var.ami_id_redhat : var.ami_id_ubuntu }"
   instance_type = "${ var.environment == "prod" ? var.it_redhat : var.it_ubuntu }"
   key_name = aws_key_pair.mykeypair.key_name


   tags = {
      Name = "${var.server}-28oct"
      env = "test"
   }
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "rukey-27oct"
  public_key = var.pubkey
}
