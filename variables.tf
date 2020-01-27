# define the user access key for AWS
variable "access_key" {
}

# define the user secrete key for AWS
variable "secret_key" {
}

#define SSH key pair
variable "ssh_key" {
}

# define the local IP CIDR to map to the SSH security rule
variable "local_ip_cidr" {
}

# pass the region as a variable so we can provide it in a tfvars file
variable "region" {
}

# define the zone within the region to place AMIs
variable "zone" {
}

# define the region specific wordpress images
variable "wordpress_ami_id" {
}

# define the name tag used to identify the server name in the AWS Console
variable "server_name" {
}
