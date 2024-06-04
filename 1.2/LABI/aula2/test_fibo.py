import pytest
from fibonacci import fibonacci
from subprocess import Popen
from subprocess import PIPE
import sys


def test_fibo_negative():
    print("n<0")

    assert fibonacci(-15) == []


def test_zero_float():

    print("n>0 and float")
    
    assert fibonacci(0) == [0]

def test_2():
    print("test 2")
    assert fibonacci(2) == [0,1,1]
    


#proc = Popen(f"python3 ~/Desktop/LABI/aula2/fibonacci.py {n}", stdout=PIPE, shell=True)

def test_noargv():
    assert sys.argv[2]
    proc = Popen(f"python3 ~/Desktop/LABI/aula2/fibonacci.py {sys}", stdout=PIPE, shell=True)
    for line in iter(proc.stdout.readline, b""):
        print(line.decode("utf-8"), end="")
    
    


