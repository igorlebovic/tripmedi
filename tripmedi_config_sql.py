"""
TripMedi Database configuration module

"""

__author__ = "Mike Caprio (info@brainewave.com)"
__version__ = "$Revision: 0.1 $"
__date__ = "$Date: 2011/03/10 10:26:15 $"
__copyright__ = ""
__license__ = "Python"


import sys


class Database(object):
    "initialize a database"
    def __init__(self):
        # If needed down the road, we modify the init to specify which DB we connect to
        # and change the functionality accordingly
        self.dict_connection = {}
        pass

    "parse a connection string from file"
    def readConnectionStringFile(self, strFilename):
        file_connection = open(strFilename)
        str_connection = file_connection.read()

        list_connection = str_connection.split(";")

        for element in list_connection:
            # Convert to dictionary elements
            keyValue = element.split("=")
            keyValue[0] = keyValue[0].rstrip()

            if (keyValue[0] != ''):
                self.dict_connection[keyValue[0]] = keyValue[1]

    "connect to a database, allows optional args and uses connection string"
    def connect(self, server_name=None, user=None, password=None, database=None):
        # Get default database values from connection string file
        self.readConnectionStringFile("connectionString_sql.inc")

        # Import driver/implementation specific functionality, overriding defaults
        if (self.dict_connection["DRIVER"] == "MySQL"):
            import MySQLdb, MySQLdb.cursors
            dbError = MySQLdb.Error

        if (server_name == None):
            db_server_name = self.dict_connection["SERVER"]
        else:
            db_server_name = server_name

        if (user == None):
            db_user = self.dict_connection["USER"]
        else:
            db_user = user

        if (password == None):
            db_password = self.dict_connection["PASSWORD"]
        else:
            db_password = password

        if (database == None):
            db_database = self.dict_connection["DATABASE"]
        else:
            db_database = database

        # Make database connection
        try:
            dbConnection = MySQLdb.connect(db_server_name, db_user, db_password, db_database, use_unicode = True)
        except dbError, strErr:
            print "Database connect error %d: %s" % (strErr.args[0], strErr.args[1])
            sys.exit (1)

        return dbConnection

    "create a cursor and return it to the calling object"
    def getCursor(self, dbConnection, cursorType=None):
        # Import driver/implementation specific functionality
        if (self.dict_connection["DRIVER"] == "MySQL"):
            import MySQLdb, MySQLdb.cursors
            dbError = MySQLdb.Error
 
        # Create cursor depending on argument
        if (cursorType == 'dictCursor'):
            cursor_object = dbConnection.cursor(MySQLdb.cursors.DictCursor)
        else:
            cursor_object = dbConnection.cursor()

        return cursor_object

    def getUser(self):
        return self.dict_connection["USER"]

    def getDatabase(self):
        return self.dict_connection["DATABASE"]

    def getErrorObject(self):
        # Import driver/implementation specific functionality, overriding defaults
        if (self.dict_connection["DRIVER"] == "MySQL"):
            import MySQLdb, MySQLdb.cursors
            dbError = MySQLdb.Error

        return dbError

