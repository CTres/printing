class ApplicationController < ActionController::Base
  protect_from_forgery

  config.active_record.pluralize_table_names = false
end
