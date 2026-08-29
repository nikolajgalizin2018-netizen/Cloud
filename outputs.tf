output "vm_external_ips" {
  description = "External IPs of web servers"
  value       = [for vm in yandex_compute_instance.web : vm.network_interface[0].nat_ip_address]
}

output "vm_internal_ips" {
  description = "Internal IPs of web servers"
  value       = [for vm in yandex_compute_instance.web : vm.network_interface[0].ip_address]
}

output "load_balancer_info" {
  description = "Load balancer information"
  value = {
    id   = yandex_lb_network_load_balancer.web_lb.id
    name = yandex_lb_network_load_balancer.web_lb.name
  }
}
