resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.env}-${var.domain}-cluster"

  tags = var.default_tags
}

resource "aws_ecr_repository" "ECR_patient" {
  name                 = "${var.env}/${var.domain}/patient" 

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = var.default_tags
}

resource "aws_ecr_repository" "ECR_appointment" {
  name                 = "${var.env}/${var.domain}/appointment" 

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = var.default_tags
}