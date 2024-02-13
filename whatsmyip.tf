# Get the current public IP to configure the NSG for SSH access to the VMs
data "http" "ip" {
  url = "https://ifconfig.me/ip"
}