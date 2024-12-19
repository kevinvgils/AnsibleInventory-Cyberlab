resource "proxmox_vm_qemu" "example" {
  name        = "example-vm"  # Naam van je VM
  target_node = "proxmox"   # De node waarop de VM moet draaien
  clone       = "test"  # De naam van het template

  timeout {
    create = "60m"  # 60 minutes
    update = "60m"
    delete = "30m"
  }
}