class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:company_name, :email, :password, :password_confirmation, :current_password)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:company_name, :email, :password, :password_confirmation, :current_password, :legal_name,
      :dba, :billing_address_line_1, :billing_address_line_2, :billing_city, :billing_state, :billing_zip, :billing_phone_number, :type_of_organization,
      :bank_name, :bank_account_number, :bank_routing_number, :tax_id, :info_website, :info_company_description, :info_hours, :info_customer_service_phone,
      :info_accounts_payable_person, :info_marketing_manager, :owner_direct_name, :owner_direct_email, :owner_direct_phone)}
  end


end
