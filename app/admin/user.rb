ActiveAdmin.register User do
  index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :resume
    column :business?
    column :searchable?
    column :created_at
    column :admin
    actions
  end
end
