from bs4 import BeautifulSoup
from urllib import urlopen
urlpath = urlopen('http://www.subflow.net/Radio/ambient/')
html_source = urlpath.read().decode("utf-8", "ignore")
soup = BeautifulSoup(html_source)
temp_list = [] 	
file_list = []
for link in soup.find_all('a'):
    temp_list.append(link.get('href'))
for item in temp_list:
	if ".mp3" in item:
		file_list.append(item)
#print name_list

for filename in file_list:
	remotefile = urlopen('http://www.subflow.net/Radio/ambient/' + filename)
	localfile = open(filename,'wb')
	localfile.write(remotefile.read())
	localfile.close()
	remotefile.close()
	print ("File "+ filename + " downloaded and saved...")
print "All done, you have successfully download all the tracks from Subflow.net "