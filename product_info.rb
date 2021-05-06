require "http"
require "tty-table"

products = HTTP.get("http://localhost:3000/all_products")
products =  products.parse

reaver = []
pipeline = []
aquos = []
reaver << products[0]["name"]
reaver << products[0]["price"]
reaver << products[0]["image_uel"]
reaver << products[0]["description"]
pipeline << products[1]["name"]
pipeline << products[1]["price"]
pipeline << products[1]["image_uel"]
pipeline << products[1]["description"]
aquos << products[2]["name"]
aquos << products[2]["price"]
aquos << products[2]["image_uel"]
aquos << products[2]["description"]

table = TTY::Table.new(["Name", "Price", "Image URL", "Description"], [reaver, pipeline, aquos])
puts table.render(:ascii)