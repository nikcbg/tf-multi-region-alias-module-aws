# code that calls module from  Terraform Private module registry

# Allied provider configuration for US east-1 region
provider "aws" {
  alias = "east1"
  region = "us-east-1"
}

# Allied provider configuration for US west-2 region
provider "aws" {
  alias  = "west2"
  region = "us-west-2"
}

# Module configuration for 2 allied providers in 2 different regions
module "EC2-module-for-alias" {
  source  = "./module"
  providers = {
    aws.east-r = aws.east1
    aws.west-r = aws.west2
  }
}
