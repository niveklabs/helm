output "id" {
  description = "returns a string"
  value       = helm_repository.this.id
}

output "metadata" {
  description = "returns a list of object"
  value       = helm_repository.this.metadata
}

output "this" {
  value = helm_repository.this
}

