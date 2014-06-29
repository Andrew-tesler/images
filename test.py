#!/usr/bin/python

print "Test Script for images"

class Files(object):
    files = ""
    
    def __init__(self,name, size):
        self.name = name
        self.size = size
    def display_files(self):
        return "This is a file: "+str(self.name)+ " Of size: "+ str(self.size)

initial = Files("andrew", "25MB")

print initial.display_files()
