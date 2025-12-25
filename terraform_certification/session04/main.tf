resource "local_file" "fileA" {
  filename = "file1.txt"
  content  = "Hello from file1"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "Hello from file2"
}

resource "local_file" "file3" {
  filename = "file3.txt"
  content  = "Hello from file3"
}