from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)


# define class product
class Product(Resource):
	def __init__(self, p_name, p_id):
		self.name = p_name
		self.id = p_id

	def get():
		pass


