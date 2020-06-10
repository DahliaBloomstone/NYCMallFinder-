class CLI
    def greeting
        puts "Welcome to NYCMallFinder, where you will find the best mall in NYC for you!"
        mall_menu
    end  

    def mall_menu
        prompt = TTY::Prompt.new
        user_input = prompt.select("Please select a mall to view its address, rating, or reviews.", Mall.display_mall_names, cycle: true)
       
        Mall.malls.select do |mall_obj|
            if user_input == mall_obj.name 
                puts "This mall is located at #{mall_obj.address}"
                puts mall_obj.num_of_reviews
                break 
            end 
        end 
        more_malls_or_exit
    end

    def more_malls_or_exit
        prompt = TTY::Prompt.new
        choices = ["view more malls", "exit"]
        user_choice = prompt.select("Would you like to view more malls or exit?", choices)
        if user_choice == "view more malls"
            mall_menu
        elsif user_choice == "exit"
            puts "Thanks for using NYCMallFinder!"
        end 
    end 

end 