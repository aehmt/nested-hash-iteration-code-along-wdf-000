require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_icecream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |name, data|
    if name == "Freddy Mercury"
      data.each do |key, value|
        if key.to_s == "favorite_ice_cream_flavors"
          value.delete_if {|icecream| icecream == "strawberry"}
        end
        #!!binding.pry
      end
    end
  end
end
