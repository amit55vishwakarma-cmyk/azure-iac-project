variable "nic" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    public_ip_key       = string
  }))
}