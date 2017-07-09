data "aws_route53_zone" "selected" {
    name = "${var.domain}"
}

resource "aws_route53_record" "alias" {
    zone_id = "${data.aws_route53_zone.selected.zone_id}"
    name    = "${var.name}"

    type    = "${var.type}"

    alias {
        name = "${var.alias_name}"
        zone_id = "${var.zone_id}"
        evaluate_target_health = "${var.evaluate_target_health}"
    }
}
