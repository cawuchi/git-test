variable "databricks_account_id" {
  description = <<DESC
  The ID per Databricks AWS account used for accessing account management APIs.        
  After the AWS E2 account is created, this is available after logging into [https://accounts.cloud.databricks.com](https://accounts.cloud.databricks.com).
  DESC
        default = "4fbc508d-5b50-4893-9ba7-8765b877a3ba"
}
variable "databricks_account_username" {
  description = "E2 account admin email address"
  default = "destin@usavisionsys.com"
}
variable "databricks_account_password" {
  description = "E2 account admin password"
  default = "Awu17chi!"
}
variable "region" {
  description = "region in which all AWS resources are deployed"
 default = "us-west-2"
}
                   variable "workspace_vpce_service" {
  description = <<DESC
  VPC endpoint service for workspace communication. This is region-dependent.
  For example, for us-east-1 the service is available on the Databricks Private Link [documentation](https://docs.databricks.com/administration-guide/cloud-configurations/aws/privatelink.html#create-the-aws-vpc-endpoints-for-your-aws-region)
  `com.amazonaws.vpce.us-east-1.vpce-svc-09143d1e626de2f04`
  DESC
 default = "com.amazonaws.vpce.us-west-2.vpce-svc-0158114c0c730c3bb"
}

variable "relay_vpce_service" {
  description = <<DESC
  VPC endpoint service for backend relays. This is region-dependent.
  For example, for us-east-1 the service is available on the Databricks Private Link [documentation](https://docs.databricks.com/administration-guide/cloud-configurations/aws/privatelink.html#create-the-aws-vpc-endpoints-for-your-aws-region)
  `com.amazonaws.vpce.us-east-1.vpce-svc-09143d1e626de2f04`
  DESC
  default = "com.amazonaws.vpce.us-west-2.vpce-svc-0129f463fcfbc46c5"
}
variable "vpce_subnet_cidr" {
  description = "CIDR for deployment of the VPC endpoint subnets"
  default = "192.168.0.0/22"
}

variable "private_dns_enabled" {
  default = true

}
variable "tags" { default = {} } 
variable "cidr_block" {
  default = "192.168.0.0/20"
}

variable "vpc_id" {
  description = "VPC identifier for existing customer managed VPC"
  default = "vpc-0e49abf49fef0973a"
}
variable "subnet_ids" {
  description = "private subnets associated with the Databricks-compliant VPC. This should be a list of strings"
  type        = list(string)
  default = [
"subnet-0a8f285a85f8a27be",
"subnet-0ac6044c357551b48",
]
}
variable "security_group_id" {
  description = "security group ID used for VPC subnets"
  default = "sg-02e0032242d68903b"
}

variable "cross_account_arn" {
  description = "Existing cross-account IAM role ARN"
  default = "arn:aws:iam::232920852660:role/CrossAccountforDB"
}

variable "access_key" {
 description = "The AWS access key"
 sensitive = true
}

variable "secret_key" {
description = "The AWS secret_key"
sensitive = true
}

locals {
  prefix = "private-link-ws"
}
                                                                                                     
