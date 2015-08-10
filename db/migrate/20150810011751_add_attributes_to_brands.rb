class AddAttributesToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :company_name, :string
    add_column :brands, :legal_name, :string
    add_column :brands, :dba, :string
    add_column :brands, :billing_address_line_1, :string
    add_column :brands, :billing_address_line_2, :string
    add_column :brands, :billing_city, :string
    add_column :brands, :billing_state, :string
    add_column :brands, :billing_zip, :string
    add_column :brands, :billing_phone_number, :string
    add_column :brands, :type_of_organization, :string
    add_column :brands, :bank_name, :string
    add_column :brands, :bank_account_number, :string
    add_column :brands, :bank_routing_number, :string
    add_column :brands, :tax_id, :string
    add_column :brands, :info_website, :string
    add_column :brands, :info_company_description, :text
    add_column :brands, :info_hours, :text
    add_column :brands, :info_customer_service_phone, :string
    add_column :brands, :info_accounts_payable_person, :string
    add_column :brands, :info_marketing_manager, :string
    add_column :brands, :owner_direct_name, :string
    add_column :brands, :owner_direct_email, :string
    add_column :brands, :owner_direct_phone, :string
  end
end
