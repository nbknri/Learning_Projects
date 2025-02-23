from flask import Flask, render_template, request, redirect, url_for

# Initialize Flask app
app = Flask(__name__)

# List to store wishlist items
wishlist = []

# Function to add an item to the wishlist (if not already present)
def list_append(item):
    if item not in wishlist:
        wishlist.append(item)

# Function to remove an item from the wishlist (if it exists)
def list_delete(item):
    if item in wishlist:
        wishlist.remove(item)

# Route for the homepage, handles adding items to the wishlist
@app.route("/", methods=["GET", "POST"])
def home():
    if request.method == "POST":
        item_added = request.form["item"].strip()  # Get input and remove extra spaces
        if item_added:  # Ensure input is not empty
            list_append(item_added)  # Add item to wishlist
    return render_template("index.html", wishlist=wishlist)  # Render template with wishlist

# Route to delete an item from the wishlist
@app.route("/delete")
def delete():
    item = request.args.get("item")  # Get item from request parameters
    if item:
        list_delete(item)  # Remove item from wishlist
    return redirect(url_for("home"))  # Redirect to home page

# Run the Flask app in debug mode
if __name__ == "__main__":
    app.run(debug=True)
