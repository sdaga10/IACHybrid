resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "MyVPC"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name = "MyPublicSubnet"
  }
}

resource "aws_efs_file_system" "efs" {
  creation_token = "my-efs-file-system"
  tags = {
    Name = "MyEFS"
  }
}

resource "aws_efs_mount_target" "mount-target" {
  file_system_id = aws_efs_file_system.efs.id
  subnet_id      = aws_subnet.public.id
  security_groups = [aws_security_group.efs.id]
}

resource "aws_security_group" "efs" {
  name        = "EFS Security Group"
  description = "Security group for EFS"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



