module "kt_test" {
  source = "../../.."
}

output "external_ip" {
  description = "This output is used as an attribute in the reachable_other_host control"
  value = "${module.kt_test.external_ip}"
}

output "terraform_state" {
  description = "This output is used as an attribute in the state_file control"

  value = <<EOV
${path.cwd}/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate
EOV
}