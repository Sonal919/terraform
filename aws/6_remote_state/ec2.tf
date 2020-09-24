resource "aws_instance" "myawsserver" {
  ami = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"

  tags = {
    Name = "Sonal-ec2-instance-V2"
    Env = "Prod"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

