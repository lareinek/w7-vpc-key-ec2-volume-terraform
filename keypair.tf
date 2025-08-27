#create key pairserver

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "key1" {
  key_name   = "utckey"
  public_key = tls_private_key.key.public_key_openssh
}
resource "local_file" "privatekey" {
  filename        = "utckey.pem"
  file_permission = 0400
  content         = tls_private_key.key.private_key_openssh
}