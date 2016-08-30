variable "chef_validation_client_name" { }
variable "chef_validation_key" { }

module "media" {
  source = "github.com/josephholsten/tf_jh_instance"
  # source = "../../tf_jh_instance"

  role = "media"
  environment = "production"

  ssh_keys = "1248689"
  chef_validation_client_name = "${var.chef_validation_client_name}"
  chef_validation_key = "${var.chef_validation_key}"
}
