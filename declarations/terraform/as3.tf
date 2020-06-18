/*
Copyright 2019 F5 Networks Inc.
This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

/*
terraform {
  required_providers {
    terraform-providers/bigip = "~> 1.2.0"
  }
}
*/

provider "bigip" {
  address = "b3f01d41-3618-476c-a94f-3a9be92120e9.access.udf.f5.com"
  username = "admin"
  password = var.password
}

// config_name is used to set the identity of as3 resource which is unique for resource.
/*
resource "bigip_as3" "as3_example" {
  as3_json = file("as3.json")
 #config_name = "myconfig"
}
*/


output "file_list" {
  value = toset(var.file_list)
}


# resource "null_resource" "example3" {
#   provisioner "local-exec" {
#     command = "echo `date`"
#   }
# }