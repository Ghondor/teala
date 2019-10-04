ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :date_event, :time_event, :image_path
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :date_event, :time_event]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #
  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Item in Food Menu" do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :date_event
      f.input :time_event
      f.input :image_path
    end

    f.actions
  end
  
end
