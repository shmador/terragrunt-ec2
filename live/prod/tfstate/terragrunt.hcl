terraform {
  source = "../../../modules/tfstate"
}

inputs = {
  region      = "il-central-1"
  bucket_name = "shapizzz-tf-state"  # must be globally unique
}

