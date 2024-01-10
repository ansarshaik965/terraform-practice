output "aws_ec2_ip"{
	description = "EC2 Public IPs of all instances"
	value = aws_instance.my_terra_instance[*].public_ip
}

#validate using : terraform validate
