# -*- coding: utf-8 -*-
# coding=utf-8
import requests,random,os
from random import choice
import sys
import datetime
import time
import json


def intro():
    clear = "\x1b[0m"
    colors = [36, 32, 34, 35, 31, 37  ]

    x = """ 
    +----------------------------------------------------------------------------+
    |                    
    |				givemeurboobz
    |             Special Thanks to : XAYNET -  Extreme Crew - Warga Sakit Jiwa
    |                     Dn13 - SGBTeam - Tatsumi-Crew
    |       		           
    +----------------------------------------------------------------------------+
                               $$$ Make Money $$$
                   		  """
    
    for N, line in enumerate(x.split("\n")):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        

intro()
