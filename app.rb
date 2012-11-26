# encoding: utf-8
require 'sinatra'
require 'haml'

class MyApp < Sinatra::Application
	enable :sessions

	configure :production do
		Haml::Options.defaults[:format] = :html5
	end

	
end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'