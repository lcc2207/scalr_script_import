class Chef::Recipe::ENV
  def self.script_id
    id = ENV['SCRIPT_ID']
  end

  def self.script_path
    path = ENV['WORKSPACE']
  end

  def self.script_name
     name = ENV['SCRIPT_NAME']
  end

  def self.script_body
    body = File.read("#{ENV['WORKSPACE']}/#{ENV['SCRIPT_NAME']}").to_json
  end
end

# # recipes/accounts.rb
# script_json.env = node.chef_environment
#
# script_json.new.settings

# ruby_block 'format_script' do
#   block do
#     node.override['script_format']['script_id'] = ENV['SCRIPT_ID']
#     node.override['script_format']['
#     node.override['script_format']['script_body'] = File.read("#{ENV['WORKSPACE']}/#{ENV['SCRIPT_NAME']}").to_json
#   end
#   # notifies :create, 'template[/Users/lynncaldwell/tmp/scalr_scripts/test_script/script1.json]', :delayed
# end
