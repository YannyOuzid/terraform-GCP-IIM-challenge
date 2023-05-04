variable "bucket_name" {
  type = string
  default = "ouzid-rendu-04052023"
}

variable "archive_name" {
  type = string
  default = "archive"
}

variable "function_name" {
  type = string
  default = "api_render"
}

variable "entry_point" {
  type = string
  default = "httpServer"
}