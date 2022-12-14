from flask import Blueprint, jsonify
from extensions import db_connection

# Create a new blueprint for managers
Robert_blueprint = Blueprint('Robert_blueprint', __name__)


@Robert_blueprint.route('/PredictionNode')
def db_PredictionNode():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from PredictionNode')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Robert_blueprint.route('/CameraDatasheet')
def db_CameraDatasheet():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from CameraDatasheet')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Robert_blueprint.route('/Camera')
def db_Camera():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from Camera')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)