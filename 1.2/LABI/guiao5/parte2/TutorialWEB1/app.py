# encoding=utf-8
#
# Example of a cherrypy application that serves static content as well as dynamic content.
#
# Adrego da Rocha - Fevereiro de 2023
#
# To run: python3 app.py

import os.path
import cherrypy
import time

# The absolute path to this file's base directory
baseDir = os.path.abspath(os.path.dirname(__file__))

# Dictionary with this application's static directories configuration
config = {
			"/":		{	"tools.staticdir.root": baseDir },

			"/html":	{	"tools.staticdir.on": True, "tools.staticdir.dir": "html" },

			"/js":		{	"tools.staticdir.on": True, "tools.staticdir.dir": "js" },

			"/css":		{	"tools.staticdir.on": True, "tools.staticdir.dir": "css" },

			"/images":	{	"tools.staticdir.on": True, "tools.staticdir.dir": "images" },         
}

class Root():
	@cherrypy.expose
	def index(self):
		return open("html/index.html")

	# Clock
	@cherrypy.expose
	def clock(self):
			cherrypy.response.headers["Content-Type"] = "application/json"
			return time.strftime('{"date":"%d-%m-%Y", "time":"%H:%M:%S"}').encode("utf-8")
	# Distance

	# UpLoad


cherrypy.quickstart(Root(), "/", config)
