#
# CodeDeploy Deployment Group
#
resource "aws_codedeploy_deployment_group" "example" {
  app_name              = "${aws_codedeploy_app.app.name}"
  deployment_group_name = "${var.environment}-${aws_codedeploy_app.app.name}-deployment-group"
  service_role_arn      = "${aws_iam_role.role.arn}"

  ec2_tag_set {
    ec2_tag_filter {
      key   = "filterkey1"
      type  = "KEY_AND_VALUE"
      value = "filtervalue"
    }
  }
}
