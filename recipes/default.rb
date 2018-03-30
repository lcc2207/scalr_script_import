# include_recipe "nodejs"
# include_recipe "nodejs::npm"
#
# nodejs_npm 'jsonlint' do
#   version node['jsonlint']['version']
# end

template "#{ENV.script_path}/#{ENV.script_name}.json" do
  source 'script.json.erb'
  variables(
    body: ENV.script_body,
    script_Id: ENV.script_id
  )
  # action :nothing
end
