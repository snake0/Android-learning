import sys
import os

if len(sys.argv) != 3:
    print("usage: python signer.py [apksigner.jar dir] [*.apk dir]")
    sys.exit(0)

cmd = "java -jar %s sign --ks keys/hellokey.jks %s" % (sys.argv[1], sys.argv[2])
os.system(cmd)
print("\nresign verify:\n")
cmd = "java -jar %s verify -v %s" % (sys.argv[1], sys.argv[2])
os.system(cmd)
