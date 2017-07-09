variable "domain" {
    description = "Domain used for the Route53 Hosted Zone"
}

variable "name" {
    description = "The name of the record"
}

variable "alias_name" {
    description = "The domain name of the S3 bucket, CloudFront distribution etc."
}

variable "zone_id" {
    description = "Hosted zone id of the S3 bucket, CloudFront distribution etc."
}

variable "type" {
    description = "Type of the record (e.g. A, MX, CNAME..)"
    default = "A"
}

variable "evaluate_target_health" {
    description = "If set, Route53 is going to check the health of the target"
    default = false
}
