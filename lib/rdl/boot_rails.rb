if ENV['RDL'] && !Rails.env.production?
  require 'rdl/boot'
  require 'types/core'

  # Don't load the Rails types as these don't seem to work for Rails 3.
  # require_relative "../types/rails/_helpers.rb" # load type aliases first
  # Dir[File.dirname(__FILE__) + "/../types/rails/**/*.rb"].each { |f| require f }
else
  require 'rdl_disable'
  class ActionController::Base
    def self.params_type(typs); end
  end
end
