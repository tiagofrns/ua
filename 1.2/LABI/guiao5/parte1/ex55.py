import cherrypy
class Node():
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Node (Node.index)"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Node (Node.page)"

class Root():
    def __init__(self):
        self.node = Node()
        self.html = HTMLDocument()
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"

class HTMLDocument():
    
    
    @cherrypy.expose
    def ficheiro(self):
        return open(("documento.html"))
if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/")