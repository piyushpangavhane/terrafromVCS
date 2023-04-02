resource "random_password" "password" {
  length = 14

}



resource "random_uuid" "UUID" {
  keepers = {
    datetime = timestamp()
  }


}


resource "tls_private_key" "MyKey" {
  algorithm = "RSA"

}

resource "local_file" "PubKey" {
  content  = tls_private_key.MyKey.public_key_openssh
  filename = "id_rsa.pub"

}

resource "local_file" "PrivateKey" {
  content  = tls_private_key.MyKey.private_key_openssh
  filename = "id_rsa.ppk"

}

output "publickey" {
  value = tls_private_key.MyKey.public_key_pem

}
output "paswd" {
  value     = random_password.password.result
  sensitive = true
}

output "uuid" {
  value = random_uuid.UUID.result

}