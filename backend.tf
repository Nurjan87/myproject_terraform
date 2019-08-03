terraform {
    backend "s3" {
        backet = "myproject-terraform-nurjan"
        region = "us-west-1"
        key = "infra.state"

    }
}