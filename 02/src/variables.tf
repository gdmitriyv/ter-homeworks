
variable "cloud_id" {
  type        = string
  default     = "id"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "id"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network"
}

variable "vpc_name_web" {
  type        = string
  default     = "develop_db"
  description = "VPC network"
}
variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OC"
}

variable "vm_web_instance_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Имя веб в клауде"
}
variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Стандарт платформы в клауде"
}

#variable "vm_web_cores" {
#    type = number
#    default = 2
#    description = "Кол-во ядер 2"
#}
#
#variable "vm_web_memory" {
#    type = number
#    default = 2
#    description = "Кол-во памяти"
#}
#
#variable "vm_web_core_fraction" {
#    type = number
#    default = 20
#    description = "Процент использования"
#}

#task6

variable "vms_resources" {
  type = map(object({
    cores = number
    memory = number
    core_fraction = number
  }))
  default = {
    web = {
      cores = 2
      memory = 2
      core_fraction = 20
    },
    db = {
      cores = 2
      memory = 2
      core_fraction = 20
    }
  }
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "metadatas" {
  type = map
  default = {
    serial-port-enable = "1"
    ssh-keys           = "ssh-ed25519 !!!!!!!!!!!!!!!!!!!!"
    }
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa my key"
  description = "ssh-keygen -t ed25519"
}
