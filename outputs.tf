output "public_ip" {
  value = "${aws_spot_instance_request.kylo.public_ip}"
}

output "kylo" {
  value = "http://${aws_spot_instance_request.kylo.public_ip}"
}

output "nifi" {
  value = "http://${aws_spot_instance_request.kylo.public_ip}:8079/nifi"
}