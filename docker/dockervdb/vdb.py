


import subprocess

i = 10

numbers =[]

while i < 5:

	command = "docker run -itd --privileged=true --name=vdbench-0{0} --net=vdbench-net --hostname=vdbench-{0} vdbench".format(i)
