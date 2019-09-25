provider "aws" {
  shared_credentials_file = "../.envaws"
  profile                 = "awsprofile"
  region     = "us-east-2"

}
