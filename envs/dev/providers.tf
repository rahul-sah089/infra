provider "aws" {
  region = "ap-southeast-2"

  default_tags {
    tags = {
      Project   = "pharma"
      Env       = "dev"
      ManagedBy = "terraform"
    }
  }
}