provider "digitalocean" {
  token       = "${var.do_api_key}"
}

module "digitalocean_droplet" {
  source = "git@github.com:tvigers/terraform-module-example.git"
  image                 = "centos-7-x64"
  hostname              = "example"
  region                = "sgp1"
  size                  = "s-1vcpu-1gb"
  private_networking    = "true"
  ssh_fingerprints      = ["${var.ssh_fingerprint_example}"]
}
