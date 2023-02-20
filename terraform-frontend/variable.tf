variable "region" {}
variable "prefix" {}
variable "environment" {}
  

################ FOR S3 VERSIONING ##############
variable "versioning" {
    type = bool
  
}

############## FOR ACCESS CONTROL LIST ###############
variable "acl" {
    type = string
  
} 

########################## static website ##################
variable "index_document" {
  type = string
}

variable "error_document" {
  type = string
}

######################### cloudfront ##################
variable "default_root_object" {
  type = string
}

variable "enabled" {
  type = bool
}

variable "is_ipv6_enabled" {
  type = bool
}

variable "query_string" {
  type = bool
}
variable "forward" {
  type = string
}

variable "viewer_protocol_policy" {
  type = string
}
  
variable "min_ttl" {
  type = number
}

variable "default_ttl" {
  type = number
}

variable "max_ttl" {
  type = number
}

 # Cache behavior with precedence 0  


variable "restriction_type" {
  type = string
}

variable "cloudfront_default_certificate" {
  type = bool
}

variable "s3_origin_id" {
  type = string
}