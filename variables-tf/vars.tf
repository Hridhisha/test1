# variable "rg_name" {
#   default = "regvarsfile"
# }

variable "def_loc" {
  # type    = string
  # default = "east us"
  description = "Please enter the def loc:"
}

variable "rg_name" {
  type = list
  default = ["test0", "test1", "test2"]

}


variable "rg_det" {
  type = map(any)
  default = {
    rg_name1 = "maprgname1"
    rg_name2 = "maprgn2"
  }

}