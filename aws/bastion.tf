resource "aws_launch_configuration" "nomad_bastion" {
  name_prefix                 = "nomad-bastion-"
  image_id                    = "${var.ami}"
  instance_type               = "${var.bastion_instance_type}"
  key_name                    = "bastionkey"
  security_groups             = ["${aws_security_group.bastion.id}"]
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "nomad_bastion" {
  name                 = "nomad-bastion"
  max_size             = 1
  min_size             = 1
  launch_configuration = "${aws_launch_configuration.nomad_bastion.name}"
  vpc_zone_identifier  = ["${aws_subnet.public.*.id}"]
}
