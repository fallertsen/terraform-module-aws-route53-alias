Terraform module for Route53 aliase
===================================

This is a terraform module that can be used to control an alias record on
Route53.

Route53 suppors the
[Alias](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html)
records, which are special records for some specific usages.
That's why also in terraform they are handled a bit differently than other
normal records, hence why this simple terraform module can be used.

Input variables
---------------

- `domain` - The domain registered in your Route53 Hosted Zone
- `name` - The name of the Route53 record
- `alias_name` - The domain name of the S3 bucket, CloudFront distribution etc.
- `zone_id` - The hosted zone id of the S3 bucket, CloudFront distribution etc.
- `type` - The type of the record (e.g. A, MX, CNAME..) (optional, default to "A")
- `evaluate_target_health` - If to evaluate the target health or not (optional, default to "false")

Usage
-----

This is a short example on how you can use the module in a simple template file,
e.g. `main.tf`.

```
module "alias-dns" {
    source = "github.com/fallertsen/terraform-module-aws-route53-alias"

    domain = "example.com"
    name = "example.com"
    alias_name = "s3-website-eu-west-1.amazonaws.com."
    zone_id = "ABCDE1234FGHIJ"
}
```

This would createa a new root record for the domain `example.com` that would be
an alias to an S3 bucket.
