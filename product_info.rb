require "http"
require "tty-table"

products = HTTP.get("http://localhost:3000/products")
products =  products.parse

# Trying to use the TTY Table Gem

reaver = []
pipeline = []
aquos = []
products[0].each { |key,value| reaver << value}
products[1].each { |key,value| pipeline << value}
products[2].each { |key,value| aquos << value}

table = TTY::Table.new(["Name", "Price", "Image URL", "Description"], [reaver])
puts table.render(:ascii)

