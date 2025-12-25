terraform {
  cloud {
    organization = "zane"
    hostname     = "app.terraform.io"

    workspaces {
      name = "random-string"
    }
  }
}