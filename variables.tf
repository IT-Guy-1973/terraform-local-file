variable "filename" {
  default = "hello.txt"
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir "]
  type    = list(string)
}
variable "file-content" {
  type = map(any)
  default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals"
  }
}
