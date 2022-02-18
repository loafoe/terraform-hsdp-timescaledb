terraform {
  required_providers {
    random = {
      source = "random"
    }
    hsdp = {
      source  = "philips-software/hsdp"
      version = ">= 0.30.0"
    }
  }
}
