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
