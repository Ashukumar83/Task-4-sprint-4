# module "Example" {
#   source = "./Example"
  
  
# }




resource "aws_instance" "web" {
  ami           = var.ami[count.index]
  instance_type = "t2.micro"
  count = length(var.ami)

  tags = {
    Name = var.ins_name[count.index],
    #Name = "demo-instance-ashu ${count.index}",
    Owner = "Ashu Kumar"
  }
}





# resource "aws_instance" "web" {
#   for_each = toset(var.ashu)
#   ami = "ami-08df646e18b182346"
#   instance_type = "t2.micro"

#   tags = {
#     Name = each.key,
#     Owner = "ashu"
#   }

# }


