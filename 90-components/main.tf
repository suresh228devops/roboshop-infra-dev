module "component" {
    source = "git::https://github.com/suresh228devops/terraform-aws-roboshop.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
  
}