# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
 %(<span style="font-size:12px;color:red;">#{instance.error_message.kind_of?(Array) ? instance.error_message.first : instance.error_message}</span><br />) + html_tag
end
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'e0b9f69ab2b7ff4fd3bcd65b056333e7'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
end
