resource "aws_iam_user" "user1" {
  name = "user1"
}

resource "aws_iam_group" "dev-group" {
  name = "dev-group"
}

resource "aws_iam_user_group_membership" "user1:dev-group" {
  user = aws_iam_user.user1.name
  groups = [ aws_iam_group.dev-group.name ]
}