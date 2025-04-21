output "vpc_id" {
  value = aws_vpc.main.id
}

output "public1_subnet_id" {
  value = aws_subnet.public1.id
}

output "public2_subnet_id" {
  value = aws_subnet.public2.id
}

output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.app.arn
}

output "ecs_service_arn" {
  value = aws_ecs_service.app.id
}
