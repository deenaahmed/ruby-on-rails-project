ActiveAdmin.register User do
    permit_params(:name, :date_of_birth, :gender, :profile_picture)
      index do
          selectable_column 
          id_column
          column :email
          column :created_at
          actions
        end   
        filter :email

        show do |user|
          attributes_table do
          row :email
          row :profile_picture
          end
        end 
  
  end