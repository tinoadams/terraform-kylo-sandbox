variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
  default     = "~/.ssh/kylo-sandbox.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default     = "kylo-sandbox"
}

variable "aws_profile" {
  description = "AWS credentials file prfile name."
  default     = "default"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-2"
}

variable "aws_availability_zone" {
  description = "AWS aws_availability_zone for the aws_subnet."
  default     = "ap-southeast-2b"
}


# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    ap-southeast-2 = "ami-83e924e1"
  }
}
