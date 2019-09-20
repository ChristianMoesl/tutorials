#!/usr/local/bin/python3

import sys
import re
import os

log_file = 'log/Christians-MacBook-Pro.local.txt'

def bench_query(repetitions, name):
  os.remove(log_file)

  for i in range(0, repetitions):
    os.system(f"./bench {name} ../data/1gram_a.csv > /dev/null")

  with open(log_file, 'r') as f:
    acc = 0.0
    accU = 0.0
    accS = 0.0
    c = 0

    for line in f.readlines():
      time = re.match(r"real\s+(\d)m(\d\.\d{3})s", line)

      if (time != None):
        seconds = float(time.group(2)) + float(time.group(1)) * 60
        acc = acc + seconds
        c = c + 1

      time = re.match(r"user\s+(\d)m(\d\.\d{3})s", line)

      if (time != None):
        seconds = float(time.group(2)) + float(time.group(1)) * 60
        accU = accU + seconds

      time = re.match(r"sys\s+(\d)m(\d\.\d{3})s", line)

      if (time != None):
        seconds = float(time.group(2)) + float(time.group(1)) * 60
        accS = accS + seconds

    if c == 0:
      print("no results")
    else:
      print("{0:1.4f}  {1:1.4f}  {2:1.4f}  {3}".format(acc / c, accU / c, accS / c, name))

print("real    user    sys")

for query in sys.argv[2:]:
  bench_query(int(sys.argv[1]), query)