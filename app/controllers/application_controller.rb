class ApplicationController < ActionController::API
  include Knock::Authenticable
  require 'mailgun'
end
