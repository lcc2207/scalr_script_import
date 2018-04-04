template "#{ENV.script_path}/#{ENV.script_name}.json" do
  source 'script.json.erb'
  variables(
    body: ENV.script_body,
    script_Id: ENV.script_id
  )
end
