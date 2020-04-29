# Define AWS as our provider

provider "aws"{
profile = "CIAM-NP_CI"
assume_role {
role_arn="arn:aws:iam::118301443465:role/iar-MigrationTeam" 
}
region = "eu-west-1"
}