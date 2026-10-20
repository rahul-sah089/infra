terraform {
  backend "s3" {
    bucket       = "zen-pharma-terraform-state-rahul-sah089"
    key          = "envs/dev/terraform.tfstate"
    region       = "ap-southeast-2"
    encrypt      = true
    use_lockfile = true
  }
}