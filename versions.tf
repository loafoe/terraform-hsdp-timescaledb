terraform {
  required_providers {
    random = {
      source = "random"
    }
    hsdp = {
      source  = "philips-software/hsdp"
      version = ">= 0.30.0"
    }
    ssh = {
      source  = "loafoe/ssh"
      version = ">= 2.1.0"
    }

  }
}
