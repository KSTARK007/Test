import random as rand
from clustering import clustering
from point import Point
import csv

geo_locs = []
f = open("data.csv", 'r')
reader = csv.reader(f, delimiter=",")
for line in reader:
    loc_ = Point(float(line[0]), float(line[1]))
    geo_locs.append(loc_)
cluster = clustering(geo_locs, 8 ) # change 8 to any number of clusters 
flag = cluster.k_means(False)
if flag == -1:
    print("Error in arguments!")
else:
    print("clustering results:")
    cluster.print_clusters(cluster.clusters)