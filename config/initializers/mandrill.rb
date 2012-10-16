config = YAML.load_file(Rails.root.join('config', 'mandrill.yml'))

MANDRILL = Mandrill::API.new(config["key"])
