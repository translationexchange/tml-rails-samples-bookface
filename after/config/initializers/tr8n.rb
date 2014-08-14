Tr8n.configure do |config|
  config.application = {
      :key => "9b6f5923b480262fa",
      :secret => "b58665fbcbd1a592e"
  }
  config.cache = {
      :enabled  => true,
      :adapter  => 'memcache',
      :host     => 'localhost:11211',
      :version  => 1,
      :timeout  => 3600
  }
  config.logger  = {
      :enabled  => true,
      :path     => "#{Rails.root}/log/tr8n.log",
      :level    => 'debug'
  }
end