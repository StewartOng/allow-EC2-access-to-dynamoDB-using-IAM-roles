terraform {
  backend "s3" {
       
    bucket         = "sctp-ce9-tfstate"                    # This is an existing bucket to store terraform tfstate file
    key    = "stewartEx2-5-dynamodb/terraform.tfstate"  # Path to store tfstate in the bucket
    region = "us-east-1"                   # Your AWS region

   
   
  }


 
 
  }