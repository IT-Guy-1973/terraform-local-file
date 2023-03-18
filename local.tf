resource "local_file" "file2" {
  filename        = "hello1.txt"
  content         = "We love pets"
  file_permission = "0777"
}

