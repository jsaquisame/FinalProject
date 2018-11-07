ActiveAdmin.register Band do

    permit_params :band_name, :founded, :bandtype, :band_contact_number, :band_biography

end
