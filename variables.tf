variable "ami" {
  type    = string
  default = "ami-01cae1550c0adea9c"
}
variable "instance_type" {
  type    = string
  default = "t3.nano"
}
variable "az" {
  type    = list(string)
  default = ["eu-west-1a"]

}