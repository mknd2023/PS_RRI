import matplotlib.pyplot as plt
import numpy as np
from scipy.fft import fft
adcval=[]
sampno=np.linspace(0, 32767, 32768)
f=open("MHz390.txt","r")
for row in f:
    row=row.split('\n')
    adcval.append(float(row[0]))
f.close()
sampno8k=np.linspace(0, 8191, 8192)
vals8k=[]
for i in range(0,4):
    addi=[]
    addi=adcval[i*8192:(i+1)*8192]
    vals8k.append(addi)
    i=i+1
fftaddi=np.zeros(8*1024)
for j in vals8k:
    fftaddi=fftaddi+(np.square(np.abs(fft(j))))
fftaddi=np.divide(fftaddi, 4)
nad=[]
for i in fftaddi:
    nad.append(i)
nad[1560]=0
nad[8192-1560]=0
x=np.sum(nad)
sinad=10*np.log10(fftaddi[1560]*2/x)
print("SINAD: ", sinad,"dB")
enob=(sinad-1.76)/6.02
print("ENOB: ", enob, "bits")
sfdr=10*np.log10(fftaddi[1560]/np.max(nad))
print("SFDR: ", sfdr, "dB")
count=2
while (1560*count<4096):
    nad[1560*count]=0
    nad[8192-1560*count]=0
    count=count+1
x=np.sum(nad)
snr=10*np.log10(fftaddi[1560]*2/x)
print("SNR: ", snr, "dB")