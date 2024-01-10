resource "aws_instance" "my_terra_instance"{
                        
                    ami  = var.mera_ec2_ami
                    instance_type = "t2.micro"
                    key_name = aws_key_pair.key.key_name
                    count = var.mera_ec2_count
		   
                    tags={
                          Name = "tf_instance"
                        
                         }
                   lifecycle {
                	prevent_destroy = false
                             }
}

resource "aws_s3_bucket" "meribucket"{
                  bucket = "meribuckethain"
}
resource "aws_key_pair" "key"{
                    
                  public_key = file( "/home/ubuntu/.ssh/id.pub")
                  key_name = "mera-key"
}

