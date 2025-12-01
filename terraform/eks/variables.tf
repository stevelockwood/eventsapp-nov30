variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "project" {
  type        = string
  description = "Application Name"
}

variable "events-api-container" {
  type= string
  description = "The events-api Container to Deploy."
}

variable "events-website-container" {
  type= string
  description = "The events-website Container to Deploy."
}

variable "events-db-init-container" {
  type= string
  description = "The events-db-init Container to Deploy."
}