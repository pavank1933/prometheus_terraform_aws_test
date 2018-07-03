resource "aws_security_group" "FrontEnd" {
  name = "FrontEnd"
  tags {
        Name = "FrontEnd"
  }
  description = "ONLY HTTP CONNECTION INBOUD"
  vpc_id = "${aws_vpc.terraformmain.id}"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 8081
        to_port = 8081
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 8080
        to_port = 8080
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 9090
        to_port = 9090
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 9100
        to_port = 9100
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 5044
        to_port = 5044
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 5000
        to_port = 5000
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 42185
        to_port = 42185
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 9919
        to_port = 9919
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 24230
        to_port = 24230
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 9200
        to_port = 9200
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "Database" {
  name = "Database"
  tags {
        Name = "Database"
  }
  description = "ONLY tcp CONNECTION INBOUND"
  vpc_id = "${aws_vpc.terraformmain.id}"
  ingress {
      from_port = 3306
      to_port = 3306
      protocol = "TCP"
      security_groups = ["${aws_security_group.FrontEnd.id}"]
  }
  ingress {
      from_port   = "22"
      to_port     = "22"
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
