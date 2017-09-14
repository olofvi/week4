require 'haml'

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
