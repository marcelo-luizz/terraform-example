resource "google_compute_instance" "this" {
    name         = var.instance_name
    machine_type = var.machine_type
    zone         = var.zone


    network_interface {
        network = "default"
        access_config {}
    }
    boot_disk {
        initialize_params {
        image = var.image
        }
    }
}