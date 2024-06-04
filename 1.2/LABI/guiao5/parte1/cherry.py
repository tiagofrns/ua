import cherrypy
class HelloWorld():
    @cherrypy.expose
    def index(self):
        return "Hello World!"
    @cherrypy.expose
    def rhyan(self, gay):
        if gay == "sim":
            return "Verdade"
        else:
            return "Mentira"
    @cherrypy.expose
    def gethost(self):
        host = cherrypy.request.headers["Host"]
        return "You have successfully reached " + host+ "/gethost"
cherrypy.quickstart(HelloWorld())