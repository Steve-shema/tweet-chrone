module CitiesHelper
    def choose_new_or_edit
     
        if action_name == 'new' || action_name == 'confirm'
              
            confirm_cities_path
           
        elsif action_name == 'edit'
            
            city_path
            
        end
    end
       
end
