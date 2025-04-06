terraform {
  backend "gcs" {
    bucket      = " terraform-state-2944042"  
    prefix      = "terraform/state"            
  }
}
