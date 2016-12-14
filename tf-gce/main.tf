provider "google" {
  credentials = "${file("~/.config/gce/media.json")}"
  project     = "media-152200"
  region      = "us-west1-a"
}

module "media" {
  source = "github.com/josephholsten/tf_jh_gce_instance"

  environment = "production"
  dc_region   = "us-west1-a"
  role        = "media"

  cohort = "b"

  instance_flavor = "g1-small"
  disk_size  = "160"

  # open firewall port :32400?
}

resource "google_compute_firewall" "media" {
    name = "media"
    # network = "${google_compute_network.other.name}"
    network = "default"
    allow {
        protocol = "icmp"
    }
    allow {
        protocol = "tcp"
        ports = [
          "80",
          "443",
          # per https://support.plex.tv/hc/en-us/articles/201543147-What-network-ports-do-I-need-to-allow-through-my-firewall-
          "32400", # for access to the Plex Media Server
          "3005", # for controlling Plex Home Theater via Plex Companion
          "8324", # for controlling Plex for Roku via Plex Companion
          "32469" # for access to the Plex DLNA Server
        ]
    }
    # source_tags = ["web"]
}

# resource "nsone_record" "media" {
#   zone   = "josephholsten.com"
#   domain = "media.josephholsten.com"
#   type   = "CNAME"
#   answers {
#     answer = "media-1.josephholsten.com"
#   }
# }
