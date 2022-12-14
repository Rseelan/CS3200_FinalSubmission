from flask import Blueprint, jsonify
from extensions import db_connection

Bob_blueprint = Blueprint('Bob_blueprint', __name__)


@Bob_blueprint.route('/GPS_ExternalParameters')
def db_GPS_ExternalParameters():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from GPS_ExternalParameters')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Bob_blueprint.route('/InertialMeasurementUnit_ExternalParameters')
def db_InertialMeasurementUnit_ExternalParameters():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from InertialMeasurementUnit_ExternalParameters')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Bob_blueprint.route('/GPS')
def db_GPS():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from GPS')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Bob_blueprint.route('/InertialMeasurementUnit')
def db_InertialMeasurementUnit():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from InertialMeasurementUnit')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Bob_blueprint.route('/DerivedVehicleData')
def db_DerivedVehicleData():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from DerivedVehicleData')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)