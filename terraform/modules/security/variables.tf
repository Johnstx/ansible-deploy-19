variable "vpc_id" {
    type         = string
    description  = "The vpc id"
}
variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}