
variable "equinix_client_id" {
  description = "Equinix client ID (consumer key), obtained after registering app in the developer platform"
  type        = string
}
variable "equinix_client_secret" {
  description = "Equinix client secret ID (consumer secret), obtained after registering app in the developer platform"
  type        = string
}

variable "Pri-DLG_name" {
  description = "Name of Primary DLG"
  type        = string
}

variable "Sec-DLG_name" {
  description = "Name of Secondary DLG"
  type        = string
}

variable "project_id" {
description = "Project ID" 
 type        = string
}

variable "PriDLG_InterfacenumberNE1" {
description = "Primary Interface number for DLG on NE1" 
 type        = string
}

variable "PriDLG_InterfacenumberNE2" {
description = "Primary Interface number for DLG on NE2" 
 type        = string
}

variable "PriDLG-bandwidth-NE1" {
description = "bandwidth speed for Primary DLG on NE1" 
 type        = string
}

variable "PriDLG-bandwidth-NE2" {
description = "bandwidth speed for Primary DLG on NE2" 
 type        = string
}

variable "NE1-Metro" {
description = "Metro for NE1" 
 type        = string
}

variable "NE2-Metro" {
description = "Yes Metro for NE2" 
 type        = string
}

variable "SecDLG_InterfacenumberNE1" {
description = "Secondary Interface number for DLG on NE1" 
 type        = string
}

variable "SecDLG_InterfacenumberNE2" {
description = "Secondary Interface number for DLG on NE2" 
 type        = string
}

variable "SecDLG-bandwidth-NE1" {
description = "bandwidth speed for Secondary DLG on NE1" 
 type        = string
}

variable "SecDLG-bandwidth-NE2" {
description = "bandwidth speed for Secondary DLG on NE2" 
 type        = string
}

variable "account_number" {
  description = "Account Number for the first device" 
  type        = number
}







