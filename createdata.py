import random
import sys
import math

latitude = 19.99
longitude = 73.78

def generate_random_data(lat, lon, num_rows):
    for _ in range(num_rows+1):
        dec_lat = random.random()/100
        dec_lon = random.random()/100
        print('%.6f,%.6f' % (lon+dec_lon, lat+dec_lat))

generate_random_data(latitude, longitude, int(sys.argv[1]))