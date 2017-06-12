ActiveAdmin.register Business do
  permit_params :name, :address, :phone_number, :email, :industry
end
