require "sinatra"
require "sinatra/content_for"

module Nazila

  class Application < Sinatra::Base
    helpers Sinatra::ContentFor

    get '/' do
      @home = true
      haml :home
    end
  end
end
