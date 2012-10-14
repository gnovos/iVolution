ActiveAdmin.register Feature do

  index do
    column :device_id
    column :body
    column :status
    default_actions
  end

end
