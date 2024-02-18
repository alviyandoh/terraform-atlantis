variable "project_id" {
  type = string
  description = "project_id google cloud platform"
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "tags" {
  type = list
}

variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}