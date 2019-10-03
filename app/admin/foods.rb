ActiveAdmin.register Food do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :price, :category_id, :image_path
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :price, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #
  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Item in Food Menu" do
      f.input :title
      f.input :description, as: :quill_editor
    end

    f.actions
  end
  
end
