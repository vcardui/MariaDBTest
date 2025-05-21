# +----------------------------------------------------------------------------+
# | CARDUI WORKS v1.0.0
# +----------------------------------------------------------------------------+
# | Copyright (c) 2024 - 2025, CARDUI.COM (www.cardui.com)
# | Vanessa Reteguín <vanessa@reteguin.com>
# | Released under the MIT license
# | www.cardui.com/carduiframework/license/license.txt
# +----------------------------------------------------------------------------+
# | Author.......: Vanessa Reteguín <vanessa@reteguin.com>
# | First release: May 18th, 2025
# | Last update..: May 20th, 2025
# | WhatIs.......: MariaDBTest - Main
# +----------------------------------------------------------------------------+

# ------------ Resources / Documentation involved -------------
# Flask-MySQLdb 2.0.0: https://pypi.org/project/Flask-MySQLdb/
# Flask with MariaDB: A Comprehensive Guide: https://readmedium.com/flask-with-mariadb-a-comprehensive-guide-0be504b0970f

from flask import Flask, jsonify
import MySQLdb

app = Flask(__name__)

# Database configuration
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flask_db'

# Initialize MySQL
mysql = MySQLdb.connect(host=app.config['MYSQL_HOST'],
                        user=app.config['MYSQL_USER'],
                        passwd=app.config['MYSQL_PASSWORD'],
                        db=app.config['MYSQL_DB'])

@app.route('/')
def index():
    cursor = mysql.cursor()
    cursor.execute("SHOW TABLES")
    result = cursor.fetchall()
    print(result) # (('mucuser',), ('question',))
    return jsonify(result)

    # jsonify(result) =
    # [
    #   [
    #     "mucuser"
    #   ],
    #   [
    #     "question"
    #   ]
    # ]


if __name__ == '__main__':
    app.run(debug=True)