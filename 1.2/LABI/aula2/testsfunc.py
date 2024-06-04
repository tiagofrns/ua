from subprocess import Popen
from subprocess import PIPE
import sys

proc = Popen("ls -la "+ sys.argv[1] , stdout=PIPE, shell=True)


return_code = proc.wait()
#print(return_code)

term = sys.argv[2]
#output = proc.stdout.read().decode("utf-8")
#print(output)

for line in iter(proc.stdout.readline, b""):
    line = line.decode("utf-8")
    if not term in line:
        sys.stdout.write(line)

#for termo in line:
#    print(line  +"      ---\n")
#    print(termo)