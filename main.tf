
data "terraform_remote_state" "remote_outputs" {
  backend = "remote"

  config = {
    organization = "Equinix-ReferenceArchitecture"
    workspaces = {
      name = "Deploy-DualNE-DualMetro-Parent"
    }
  }
}


resource "equinix_network_device_link" "test01" {
  name   = var.Pri-DLG_name
  project_id  = var.project_id
  redundancy_type = "PRIMARY"

  device {
    id           = data.terraform_remote_state.remote_outputs.outputs.primary_device_uuid
    interface_id = var.PriDLG_InterfacenumberNE1
  }

  device {
    id           = data.terraform_remote_state.remote_outputs.outputs.secondary_device_uuid
    interface_id = var.PriDLG_InterfacenumberNE2
  }

  metro_link {
    account_number  = var.account_number
    metro_code  = var.NE1-Metro
    throughput      = var.PriDLG-bandwidth-NE1
    throughput_unit = "Mbps"
  }

  metro_link {
    account_number  = var.account_number
    metro_code  = var.NE2-Metro
    throughput      = var.PriDLG-bandwidth-NE2
    throughput_unit = "Mbps"
  }

}

resource "equinix_network_device_link" "test" {
  name   = var.Sec-DLG_name
  project_id  = var.project_id
  redundancy_type = "SECONDARY"

  device {
    id           = data.terraform_remote_state.remote_outputs.outputs.primary_device_uuid
    interface_id = var.SecDLG_InterfacenumberNE1
  }

  device {
    id           = data.terraform_remote_state.remote_outputs.outputs.secondary_device_uuid
    interface_id = var.SecDLG_InterfacenumberNE2
  }

  metro_link {
    account_number  = var.account_number
    metro_code  = var.NE1-Metro
    throughput      = var.SecDLG-bandwidth-NE1
    throughput_unit = "Mbps"
  }

  metro_link {
    account_number  = var.account_number
    metro_code  = var.NE2-Metro
    throughput      = var.SecDLG-bandwidth-NE2
    throughput_unit = "Mbps"
  }

}
