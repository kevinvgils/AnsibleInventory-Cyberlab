resource "proxmox_vm_qemu" "example" {
  name        = "example-vm"  # Naam van je VM
  target_node = "proxmox"   # De node waarop de VM moet draaien
  clone       = "ubuntuOS"  # De naam van het template
}