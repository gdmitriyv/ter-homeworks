
variable "vpc_name_db" {
  type        = string
  default     = "develop_db"
  description = "VPC network"
}
variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OC"
}

variable "vm_db_instance_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Имя web"
}
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Стандарт платформы"
}
#variable "vm_db_cores" {
#    type = number
#    default = 2
#    description = "Кол-во ядер 2"
#}
#
#variable "vm_db_memory" {
#    type = number
#    default = 2
#    description = "Кол-во памяти"
#}
#
#variable "vm_db_core_fraction" {
#    type = number
#    default = 20
#    description = "Процент использования"
#}



variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

