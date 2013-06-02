#! /usr/bin/env python2

import sys,mpd,os,socket

musiclocation = '~/music' #location of music       
artlocation = '~/.mpd/covers' #where you want albumart storing
tmp_path = '/tmp/mpd.jpg' #location for temporary file so conky can find it

musiclocation = os.path.expanduser(musiclocation)
artlocation = os.path.expanduser(artlocation)

client = mpd.MPDClient()  
try:
    client.connect("localhost", 6600)    
except socket.error:
    sys.exit(1)
            
song = client.currentsong() 
artist = song['artist']
album = song['album']
covername = os.path.join( artlocation, artist+'-'+album+'.jpg')
covername = covername.replace(' ','_')     
if covername == os.path.realpath(tmp_path): # already have correct album cover
   sys.exit(0)

try:
   os.remove(tmp_path)    
except OSError: pass

if os.path.basename(covername) in os.listdir(artlocation):
   os.symlink(covername, tmp_path)  
else:    
   from urllib import FancyURLopener
   class MyOpener(FancyURLopener): version = ''
   try:   
      s = MyOpener().open('http://www.amazon.com/gp/search/keywords=%s+%s'%(artist.replace(' ','+'),album.replace(' ','+'))).read()
      import re
      link = re.findall('http://ecx.images-amazon.com\S*.jpg',s)[0]
      pic = MyOpener().open(link).read()
      open(covername ,'w').write(pic)        
      os.symlink(covername, tmp_path)        
   except IOError:
      pass
