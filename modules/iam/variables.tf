variable "member_name" {
  type = string
  default = "user-terra"
}

variable "member_mail" {
  type = string
  default = "test@test.com"
}

variable "project" {
  type    = string
  sensitive = true
}