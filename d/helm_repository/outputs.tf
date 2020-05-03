output "id" {
  description = "returns a string"
  value       = data.helm_repository.this.id
}

output "metadata" {
  description = "returns a list of object"
  value       = data.helm_repository.this.metadata
}

output "this" {
  value = helm_repository.this
}

