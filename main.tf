provider "aws" {
   profile="iam_user"
   region="us-east-2"
   }

resource "aws_instance" "k8s_cluster" {
      ami="ami-086efwhiwe678"
	instance_type="t2.medium"
	instance_count="2"
	}
