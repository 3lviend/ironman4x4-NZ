crumb :root do
  link t('breadcrumbs.home'), refinery.root_path
end

crumb :categories do
  link t('breadcrumbs.products'), refinery.ironman_products_path
end

crumb :category do |category|
  if category.depth == 0
    url = refinery.product_categories_path(category)
  elsif category.depth == 1
    url = refinery.product_subcategories_path(category.parent, category)
  else
    url = refinery.product_sub_subcategories_path(category.parent.parent, category.parent, category)
  end

  link category.name, url

  if category.root?
    parent :categories
  else
    parent :category, category.parent
  end
end

crumb :category_info do |category|
  if category.depth == 0
    url = refinery.product_categories_path(category)
  elsif category.depth == 1
    url = refinery.product_subcategories_path(category.parent, category)
  else
    url = refinery.product_sub_subcategories_path(category.parent.parent, category.parent, category)
  end

  link t('breadcrumbs.category_info', :category => category.name), url

  if category.root?
    parent :categories
  else
    parent :category, category.parent
  end
end

crumb :product do |product|
  link product.name, product
  parent :category, product.categories.first
end

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
