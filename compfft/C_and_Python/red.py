import matplotlib.pyplot as plt
import numpy as np
from scipy.fft import fft
psdval=[]
sampno=np.linspace(0,511 , 512)
f=open("red.txt","r")
count=0
for row in f:
    row=row.split('\n')
    psdval.append(int(row[0]))
    count+=1
    if count == 512:
        break
f.close()
plt.plot(sampno, psdval, color='red', marker='x')
plt.show()


