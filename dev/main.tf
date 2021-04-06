module "ec2" {
  source  = "mandeepmehra/trainingec2module/aws"
  version = "1.0.1"
  instanceCount = 1
  env = "DEV"
}


module "s3"{
  source = "../s3module"
  bucket_name = "mybucket"
  project_name = "ABC"
}