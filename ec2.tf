resource "aws_instance" "my-instance" {
  for.each = local.instances
  ami - each.value
  instance_type = var.instance_type
  tags = {
  Name = each.key
  }
}
