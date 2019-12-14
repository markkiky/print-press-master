class ApplicationController < ActionController::Base
  require 'linguistics'
  Linguistics.use(:en)
end
