provider "aws" {
access_key = "AKIAX5UIDW6QH4YMNZNI"
secret_key = "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"
region = "ap-south-1"
}

/* resource "aws_instance" "dev" {
    count = 1
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    tags = {
        Name = "dev-server ${count.index+1}"
        Environment = "development"
    }
} */

resource "aws_instance" "prod" {
    count = 1
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    tags = {
        Name = "prod-server ${count.index+1}"
        Environment = "prod"
    }
}