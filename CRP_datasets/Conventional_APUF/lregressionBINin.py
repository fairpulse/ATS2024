import math, sys
import numpy as np
from numpy import random, concatenate, array, prod, ones, sign, dot, empty, delete, split, float32, matmul
#from scipy import mean, empty, array
import csv, time
from numpy import binary_repr, uint8, append, zeros 

#numCRpair=2097151
#numCRpair=52 # partchal2 and partresp2
numCRpair=31500 # partchal3 and partresp3

with open('partchal3.txt','r') as chalf:
    chal=array(zeros(64),dtype='d')
    par=array(zeros(65),dtype='d')
    count=0
    #chalf.readline() #To read and ignore the first line
    for b in chalf:
        #z=chalf.readline()
        #print(b)
        temp=array(list(b))
        #print(temp,temp.shape,temp.dtype)
        z=zeros(64,dtype='d')
        for k in range(0,len(temp)-1): #To ignore the "\n" character
            if(temp[k]=='1'):
                z[k]=1
            else:
                z[k]=0
        #print(z,z.shape,z.size,z.dtype)
        zn=zeros(shape=z.shape,dtype='d')
        for k in range(0,len(temp)-1): 
            zn[k]=(1-2*int(temp[k]))
        #print(zn,zn.shape,zn.size,zn.dtype)
       
        znp=array(zeros(65),dtype='d')
        #Parity vector for each challenge
        for k in range(0,len(znp)-1):
            znp[k]=prod(zn[k+1:len(zn)])
        znp[len(znp)-1]=1.0
        #print(znp,znp.ndim,znp.size,znp.dtype)
        #Encoding 0 as "+1" and 1 as "-1"
       
        if count==0 :
            chal=concatenate(([chal],[zn]),axis=0)
            par=concatenate(([par],[znp]),axis=0)
        else :
            chal=concatenate((chal,[zn]),axis=0)
            par=concatenate((par,[znp]),axis=0)
        count += 1

    #just to remove the first all-zero row:
    chal=delete(chal,0,0)
    par=delete(par,0,0)

    #targ=targ.squeeze()
    temp=[]
    z=[]
    zn=[]
    znp=[]
    #par=
    #print (temp2)
    #print (chal,chal.shape,chal.size,chal.dtype)
chalf.close()

with open('partresp3.txt','r') as respf:

    targ=array(zeros(1),dtype='d')
    count=0
    #respf.readline()
    for br in respf:
        #br=respf.readline()
        temp=array(list(br))
        r=zeros(1,dtype=float)
        for k in range(0,len(temp)-1): #To ignore the "\n" character
            if(temp[k]=='1'):
                r[k]=1
            else:
                r[k]=0
        #print("r,re and rn successively")
        #print(r,r.shape,r.size,r.dtype)
        re=array(list(r),dtype='d')
        #print(re,re.shape,re.size,re.dtype)
        rn=zeros(shape=re.shape,dtype='d')
        for k in range(0,len(re)):
            #rn[k]=(1-2*r[k])
            rn[k]=(re[k])
        #print(rn,rn.ndim,rn.size,rn.dtype)

        if count==0 :
            targ=concatenate(([targ],[rn]),axis=0)
        else :
            targ=concatenate((targ,[rn]),axis=0)
        count += 1
    
    #just to remove the first all-zero row:
    targ=delete(targ,0,0)
    #targ=targ.squeeze()
 
    r=[]
    re=[]
    rn=[]
    #print (targ,targ.shape,targ.size,targ.dtype)
respf.close()


#Split the dataset into train and test sets
#tr for training and te for testing
#Learn and Predict using Stochastic Gradient Descent
w=random.uniform(0,1,par.shape[1])
eta=0.01
acc=0.01
llcostf=1.0e+06
llcostfn=0.0
print(w)
temp3=split(par,[int(0.8*numCRpair)],axis=0)
trpar=temp3[0]
tepar=temp3[1]
temp4=split(targ,[int(0.8*numCRpair)],axis=0)
trtarg=temp4[0]
tetarg=temp4[1]
for k in range (0,trpar.shape[0]):
    sigmo=(1/(1+math.exp((-1)*(matmul(w.T,trpar[k])))))
    #costfn=(0.5)*((trtarg[k]-(1/(1+math.exp((-1)*(matmul(w.T,trpar[k]))))))**2)
    llcostfn=(trtarg[k]*math.log(sigmo))+((1-trtarg[k])*math.log(1-sigmo))
    w=w+(eta*(trtarg[k]-sigmo)*trpar[k])
    predacc=0.0
    #if(predacc)<acc:
    #print("Log-Likelihood Cost Function",llcostf)
    #if(llcostf-llcostfn)<acc:
    #    break
    #llcostf=llcostfn
    print("Sample number",k,"Log-Likelihood Cost Function",llcostfn)
    #print("Sample number",k,"predaccn",predacc)
    print("weights",w)
print("k is=",k)
#print(predaccn)
#Prediction accuracy
for j in range (0,tepar.shape[0]):
        #predacc+=0.5*(tetarg[k]-sign((1/(1+math.exp((-1)*(matmul(w.T,tepar[k])))))-0.5))
        sigmo=(1/(1+math.exp((-1)*(matmul(w.T,tepar[j])))))
        if(sigmo>=0.5):
            pred=1
        else:
            pred=0
        predacc+=((tetarg[j]-pred)**2)
        #costfn+=(0.5)*((tetarg[k]-sigmo)**2)
predaccn=predacc/tepar.shape[0]
print("Prediction accuracy (%) after 1 epoch is = ",(1-predaccn)*100)
print(predaccn) 
 

"""  #For writing new chal and resp files after reading the csv data
with open('partresp3.txt','w') as wrfile:
    with open('partchal3.txt','w') as wfile:
        with open('TestCSVBr37Rev.csv','r+') as file:
        #with open('CRP_10000_Br_2.csv','r+') as file:
        #with open('TestCRP10000.csv','r+') as file:
        #with open('TestCSVBr37.csv','r+') as file:
        #with open('TestCSVBr37del.csv','rb') as file:
        #with open('TestCSVBr37delRev.csv','rb') as file:    
            csvreader = csv.reader(file, delimiter=',')
            chal=array(zeros(64),dtype='d')
            targ=array(zeros(1),dtype='d')
            par=array(zeros(65),dtype='d')
            #a=csvreader.next()
            count=0
            numCRpair=31500
            #numCRpair=10000
            for i in csvreader:
                j=0
                temp2=''
                while j<(len(i)-1):
                    temp3=''
                    temp=uint8(i)
                    b = binary_repr(temp[j],width=8)
                    b = ''.join(reversed(b))
                    temp2=temp2+b
                    #concatenation of strings
                    j += 1
                br=binary_repr(temp[j],width=1)
  
                z=array(list(temp2),dtype='d')
                zn=zeros(shape=z.shape,dtype='d')
                #znp=zeros(shape=z.shape,dtype='d')
                znp=array(zeros(65),dtype='d')
                #Encoding 0 as "+1" and 1 as "-1"
                for k in range(0,len(z)):
                    zn[k]=(1-2*z[k])
                #Parity vector for each challenge
                for k in range(0,len(znp)-1):
                    znp[k]=prod(zn[k+1:len(zn)])
                znp[len(znp)-1]=1.0

                r=array(list(br),dtype='d')

                wrfile.write(str(br)+'\n')
                wfile.write(str(temp2)+'\n')
                #break
                rn=zeros(shape=r.shape,dtype='d')
                for k in range(0,len(r)):
                    #rn[k]=(1-2*r[k])
                    rn[k]=r[k]
                #z=array(list(temp2),dtype=object)
                #r=array(list(br),dtype=object)

                if count==0 :
                    chal=concatenate(([chal],[zn]),axis=0)
                    targ=concatenate(([targ],[rn]),axis=0)
                    par=concatenate(([par],[znp]),axis=0)
                else :
                    chal=concatenate((chal,[zn]),axis=0)
                    targ=concatenate((targ,[rn]),axis=0)
                    par=concatenate((par,[znp]),axis=0)
                count += 1
                
            #just to remove the first all-zero row:
            chal=delete(chal,0,0)
            par=delete(par,0,0)
            targ=delete(targ,0,0)
            #targ=targ.squeeze()
            z=[]
            r=[]
            zn=[]
            rn=[]
            znp=[]
            #par=
            #print (temp2)
            #print (chal)
            #print (targ)
            
            #filecontent = array([i for i in csvreader], dtype='d')
            #targets = array(filecontent[:, 0])
            #features = array(filecontent[:, 1:].transpose())
            #print targets
        file.close()
    wfile.close()
wrfile.close()
 """