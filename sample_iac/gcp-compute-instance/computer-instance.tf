resource "google_compute_instance" "default" {
  name         = var.gcp_compute_name
  machine_type = var.gcp_machine_type
  zone         = var.gcp_zone

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    email  = "examples@email.com"
  }

  tags = ["server", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.gcp_network

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
    block-project-ssh-keys = true
  }

  metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Avenue Code is the leading software consulting agency focused on delivering end-to-end development solutions for digital transformation across every vertical. We pride ourselves on our technical acumen, our collaborative problem-solving ability, and the warm professionalism of our teams.!</h1></body></html>' | sudo tee /var/www/html/index.html"

}
