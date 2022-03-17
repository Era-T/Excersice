resource "aws_iam_user" "iam_user" {
  for_each = toset(local.users)
  name     = each.value
}


resource "aws_iam_group_membership" "training_memberships" {
  name = "training-memberships"

  users = local.users

  group = "training-members"

  depends_on = [
    aws_iam_user.iam_user
  ]
}
