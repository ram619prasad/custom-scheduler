DEFAULT_CONFIGURED_JOBS = YAML.load(File.read(File.expand_path("#{Rails.root}/config/configured_scheduler.yml", __FILE__)))
