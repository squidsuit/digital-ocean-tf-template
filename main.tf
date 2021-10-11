terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.7.0"
    }
  }
}

provider "digitalocean" {
  token = ""
}

resource "digitalocean_droplet" "server" {
  image    = "ubuntu-20-04-x64"
  name     = "server-test"
  region   = "nyc3"
  size     = "s-2vcpu-2gb"
  ssh_keys = ["a0:78:b8:14:a8:52:0e:54:93:53:fb:86:ae:10:11:15"]
}