resource "aws_ecs_task_definition" "patient_task" {
  family                   = "patient-task"
  requires_compatibilities = ["FARGATE"]
  network_mode            = "awsvpc"
  cpu                     = "256"
  memory                  = "512"
  execution_role_arn      = aws_iam_role.ecs_task_execution.arn

  container_definitions = jsonencode([{
    name  = "${var.env}-${var.domain}-patient"
    image = "${aws_ecr_repository.ecr_patient.repository_url}:latest"
    portMappings = [{
      containerPort = var.container_port
      protocol      = "tcp"
    }]
  }])
}

resource "aws_ecs_service" "patient" {
  name            = "${var.env}-${var.domain}-patient-service"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.patient_task.arn
  desired_count   = 2
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = [aws_subnet.public_sub_1.id, aws_subnet.public_sub_2.id]
    security_groups  = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }
  load_balancer {
    target_group_arn = aws_lb_target_group.patient.arn
    container_name   = "${var.env}-${var.domain}-patient"
    container_port   = var.container_port
  }
  depends_on = [aws_lb_listener.http]
}
