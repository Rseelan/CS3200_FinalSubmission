# import the Flask framework
from flask import Flask, jsonify
from flaskext.mysql import MySQL
from extensions import db_connection


# create a flask object
app = Flask(__name__)

#add db config variables to the app object
app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_USER'] = 'webapp'
app.config['MYSQL_DATABASE_PASSWORD'] = 'abc123'
app.config['MYSQL_DATABASE_DB'] = 'SelfDrivingUI'

#create the MySQL object and connect it to the flask app object

db_connection.init_app(app)


# import the blueprint objects from their respective locations
from Bob_api.Bob import Bob_blueprint
from Josh_api.Josh import Josh_blueprint
from Robert_api.Robert import Robert_blueprint


# register the blueprints we created with the current Flask app object.
app.register_blueprint(Bob_blueprint, url_prefix='/Bob')
app.register_blueprint(Josh_blueprint, url_prefix='/Josh')
app.register_blueprint(Robert_blueprint, url_prefix='/Robert')

# --------------------------------------------------------------------
@app.route("/")
def hello_world():
    return f'<h1>Hello From the Flask-MySQL Connection Tutorial</h1>'



# If this file is being run directly, then run the application 
# via the app object. 
# debug = True will provide helpful debugging information and 
#   allow hot reloading of the source code as you make edits and 
#   save the files. 
if __name__ == '__main__': 
    app.run(debug = True, host = '0.0.0.0', port = 4000)