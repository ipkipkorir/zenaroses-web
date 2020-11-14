from flask import Flask, render_template

app = Flask(__name__)

#Route to display the homepage
@app.route("/", methods=["GET"])
@app.route("/home", methods=["GET"])
def index():
	title = "Home-Zena Roses"
	return render_template("index.html", title=title)

#Route to display information about the company
@app.route("/about", methods=["GET"])
def about():
	title = "About-Zena Roses"
	return render_template("about.html", title=title)

#Route to display information about Asai Farm
@app.route("/asaifarm", methods=["GET"])
def asaifarm():
	title = "Asai Farm-Zena Roses"
	return render_template("asaifarm.html", title=title)

#Route to display information about Plateau Farm
@app.route("/plateaufarm", methods=["GET"])
def plateaufarm():
	title = "Plateau Farm-Zena Roses"
	return render_template("plateaufarm.html", title=title)

#Page to display the company products
@app.route("/products", methods=["GET", "POST"])
def products():
	title = "Products-Zena Roses"
	return render_template("products.html", title=title)


if __name__ == "__main__":
	app.run(host="127.0.0.1", port=5000, debug=True)