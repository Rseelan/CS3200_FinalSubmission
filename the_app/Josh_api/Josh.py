from flask import Blueprint, jsonify, request, make_response, current_app
import json
from extensions import db_connection

# Create a new blueprint for Josh
Josh_blueprint = Blueprint('Josh_blueprint', __name__)

# add a route to this blueprint

@Josh_blueprint.route('/ThermalCoolingSystems')
def db_ThermalCoolingSystems():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from ThermalCoolingSystems')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Josh_blueprint.route('/LowVoltageSystem')
def db_LowVoltageSystem():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from LowVoltageSystem')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Josh_blueprint.route('/HighVoltageSystem')
def db_HighVoltageSystem():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from HighVoltageSystem')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Josh_blueprint.route('/StructuralHealth')
def db_StructuralHealth():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from StructuralHealth')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Josh_blueprint.route('/CabinDiagnostics')
def db_CabinDiagnostics():
   cur = db_connection.get_db().cursor()
   cur.execute('select * from CabinDiagnostics')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@Josh_blueprint.route('StructuralHealthUpdate', methods = ['POST'])
def add_StructuralHealth():
    current_app.logger.info(request.form)
    cursor=db_connection.get_db().cursor()
    RegionID = request.form['RegionID']
    Region = request.form['Region']
    Temp = request.form['Temp']
    Strain = request.form['Strain']
    query = f'INSERT INTO StructuralHealth(RegionID, Region, Temp, Strain) VALUES(\"{RegionID}\", \"{Region}\", \"{Temp}\", \"{Strain}\")'
    cursor.execute(query)
    db_connection.get_db().commit()
    return "Success"

@Josh_blueprint.route('CabinDiagnosticsUpdate', methods = ['POST'])
def add_CabinDiagnostics():
    current_app.logger.info(request.form)
    cursor=db_connection.get_db().cursor()
    CabinLocationID = request.form['CabinLocationID']
    Temp = request.form['Temp']
    Humidity = request.form['Humidity']
    AirQuality = request.form['AirQuality']
    query = f'INSERT INTO CabinDiagnostics(CabinLocationID, Temp, Humidity, AirQuality) VALUES(\"{CabinLocationID}\", \"{Temp}\", \"{Humidity}\", \"{AirQuality}\")'
    cursor.execute(query)
    db_connection.get_db().commit()
    return "Success"