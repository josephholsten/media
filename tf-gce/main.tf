provider "google" {
  credentials = "${file(\"~/.config/gce/credentials\")}"
  account_file = ""
}

module "media" {
  # source = "github.com/josephholsten/tf_jh_instance"
  source = "../../tf_jh_gce_instance"

  role = "media"
  environment = "production"

  # too small?
  instance_flavor = "f1-micro"

  disk_size = "160"

  # open firewall port :32400?

  chef_org = "josephholsten"
}


# resource "google_compute_firewall" "media" {
#     name = "media"
#     network = "${google_compute_network.other.name}"

#     allow {
#         protocol = "icmp"
#     }

#     allow {
#         protocol = "tcp"
#         ports = ["80", "443", "32400"]
#     }

#     # source_tags = ["web"]
# }

resource "nsone_record" "media" {
  zone   = "josephholsten.com"
  domain = "media.josephholsten.com"
  type   = "CNAME"
  answers {
    answer = "media-1.josephholsten.com"
  }
}
