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
}

variable "proxmox_api_url" {
  type    = string
  default = "https://${env("proxmox_host")}/api2/json"  # Variabelen kunnen direct vanuit omgevingsvariabelen gehaald worden
}

variable "proxmox_api_token_id" {
  type    = string
  default = ""  # Een lege string is nodig, want deze wordt ingesteld via omgevingsvariabele
}

variable "proxmox_api_token_secret" {
  type    = string
  default = ""  # Een lege string is nodig, want deze wordt ingesteld via omgevingsvariabele
}
