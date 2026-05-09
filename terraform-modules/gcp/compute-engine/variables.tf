variable "instance_name" {
  type = string
  description = "The name of the compute instance"
}

variable "machine_type" {
  type = string
  description = "The machine type of the compute instance"
  default = "n1-standard-1"
}

variable "zone" {
  type = string
  description = "The zone where the compute instance will be created"
  default = "southamerica-east1-a"
}

variable "image" {
  type = string
  description = "The image to use for the boot disk"
  default = "ubuntu-2204-lts"
}