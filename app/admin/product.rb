ActiveAdmin.register Product do

  permit_params :name, :description, :metadata

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :metadata, as: :text, input_html: { class: 'jsoneditor-target' }
    end
    f.actions
  end

end
