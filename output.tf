output "Public_IP" {
   value = aws_instance.myservers.public_ip
}

output "Private_IP" {
   value = aws_instance.myservers.private_ip
}

