crumb :root do
  link "フリマ  ", root_path
end

crumb :show do
  link " マイページ", user_path
end

crumb :myproduct do
  link " 出品した商品 - 出品中", myproduct_product_path
  parent :show
end

crumb :profile do
  link " プロフィール", profile_user_path
  parent :show
end

crumb :user_info_register do
  link " 本人情報の登録", user_info_register_user_path
  parent :show
end

crumb :logout do
  link " ログアウト", logout_user_path
  parent :show
end

# crumb : do
#   link " 支払い方法", _user_path
# end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).