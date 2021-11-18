class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #     before_action :set_timezone
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  #  def set_timezone
  #    Time.zone = 'Mexico City'
  #  end
end
