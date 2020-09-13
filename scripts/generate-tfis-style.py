#!/usr/bin/env python3
import os
import glob 

# generate signature style for tfis data
path = "style/tfis-points.mss"
signature_dir = "../data/maps/tfis_EPSG25832_Shape/Signaturen_SVG/Signaturen_Wanderwege"

def main():
    with open(os.path.join(os.getcwd(), path), "w") as f:
        f.write("#tfis-points {\n")
        for p in glob.glob(os.path.join(signature_dir, "**/*.svg")):
            (parent, filename) = p.split("/")[-2:]
            feature = "%s-%s" % (parent.split("_")[0], filename.split(".")[0])
            f.write("""
  [feature = '%s'] {
    marker-file: url('%s');
    marker-width: 12;
  }""" % (feature, p))
        
        f.write("\n}\n")
        


if __name__ == '__main__':
    main()