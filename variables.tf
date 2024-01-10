variable "mera_ec2_ami"{
                             type = string
                             default = "ami-05fb0b8c1424f266b"
}


variable  "mera_ec2_count"{
	
	description = "Number of EC2 instances"
 	type        = number
 	default     = 2
	
}
