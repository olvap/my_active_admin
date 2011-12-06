ActiveAdmin.register AdminUser do
  menu :parent => "Users"
  
  controller.authorize_resource 

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do 
      f.input :email
      f.input :roles_tokens,
      :input_html => {
        "data-pre" => f.object.roles.to_json(:methods => :name), :only => [:id, :name] }
    end
    f.buttons
  end

  after_create { |admin| admin.send_reset_password_instructions }

  def password_required?
    new_record? ? false : super
  end

end
