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
  pm_api_url      = var.proxmox_api_url
  pm_api_token_id = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure = true # Zet op false als je een geldig certificaat gebruikt
}

variable "proxmox_api_url" {
  description = "The API URL for the Proxmox server"
  default     = env("proxmox_host")
}

variable "proxmox_api_token_id" {
  description = "The API token ID for the Proxmox server"
  default     = env("api_token_id")
}

variable "proxmox_api_token_secret" {
  description = "The API token secret for the Proxmox server"
  default     = env("proxmox_token_secret")
}