require 'haml'

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :livereload

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
