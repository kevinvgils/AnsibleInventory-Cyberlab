terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = ">= 2.9.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "proxmox" {
  pm_api_url        = var.proxmox_api_url
  pm_api_token_id   = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure = true # Zet op false als je een geldig certificaat gebruikt
  pm_user = "testing@pve"
}

variable "proxmox_api_url" {
  type    = string
  default = "https://192.168.178.178/api2/json"  # Variabelen kunnen direct vanuit omgevingsvariabelen gehaald worden
}

variable "proxmox_api_token_id" {
  type    = string
  default = "testingtoken"  # Een lege string is nodig, want deze wordt ingesteld via omgevingsvariabele
}

variable "proxmox_api_token_secret" {
  type    = string
  default = "baf438da-131e-465a-98d8-06e3a54c258b"  # Een lege string is nodig, want deze wordt ingesteld via omgevingsvariabele
}
