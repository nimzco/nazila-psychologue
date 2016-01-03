Nazila::Application.configure do |config|
  configure :development do

    require "better_errors"

    config.use BetterErrors::Middleware
    BetterErrors.application_root = __dir__

    config.enable :logging
    file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
    file.sync = true

    config.use Rack::CommonLogger, file

  end
end
