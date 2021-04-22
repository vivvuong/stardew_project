require "csv"

Product.delete_all
Category.delete_all


filename = Rails.root.join("db/stardew.csv")

puts "Loading in Products from #{filename}"

csv_data = File.read(filename)

products = CSV.parse(csv_data, headers: true, encoding: "utf-8")

products.each do |c|
    category = Category.find_or_create_by(name: c["Category"])

    if category && category.valid? 

        #create a product 
        product = category.products.create(
            name: c["Name"],
            price: c["Price"],
            photo_image: c["Photo_Image"],
            description: c["Description"]
        )

        puts "Invalid Product #{c['Name']}" unless product&.valid?
    else
        puts "Invalid Product #{c['Category']} for product #{c['Name']}."
    end

end

puts "Created #{Category.count} categories."
puts "Created #{Product.count} products"

u = User.last 
puts u.inspect
