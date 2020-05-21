/*
Copyright 2019 F5 Networks Inc.
This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

terraform {
  required_providers {
    bigip = "=1.1.2"
  }
}


provider "bigip" {
  address = "b3f01d41-3618-476c-a94f-3a9be92120e9.access.udf.f5.com"
  username = "admin"
  password = "swanlabs1"
}


// config_name is used to set the identity of as3 resource which is unique for resource.

resource "bigip_as3" "as3_example" {
   as3_json = file("as3.json")
   tenant_name = "bubba"
   config_name = "yellow"
}
