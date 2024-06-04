import sys
def fibonacci(n):
    res = []
    if n < 0:
        return res
    res = [0]    
    n = n + 1
    for i in range(1,n):
        if i == 1:
            res.append(i)
        else:
            res.append(res[i-2]+res[i-1])
    return(res)
        


def main():
    
    None



if __name__ == '__main__':
    main()
    print(fibonacci(int(sys.argv[1])))