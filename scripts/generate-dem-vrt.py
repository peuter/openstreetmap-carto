#!/usr/bin/env python3
import os
import glob 

# generate dgm vert
path = "data/dgm1_05974044_Warstein_EPSG25832_XYZ"
target = "data/dem.vrt"

def main():
    with open(os.path.join(os.getcwd(), target), "w") as f:
        content = ""
        for p in glob.glob(os.path.join(os.getcwd(), path, "*.xyz")):
            (parent, filename) = p.split("/")[-2:]
            content += """
        <OGRVRTLayer name="%s">
            <SrcDataSource relativeToVRT="1">CSV:%s/%s</SrcDataSource>
            <GeometryType>wkbPoint</GeometryType>
            <LayerSRS>EPSG:25832</LayerSRS>
            <GeometryField encoding="PointFromColumns" x="field_2" y="field_1" z="field_4"/>
            <Field name="lon" src="field_1" type="real" />
            <Field name="lat" src="field_2" type="real" />
            <Field name="elevation" src="field_4" type="real" />
        </OGRVRTLayer>""" % (filename.split(".")[0], parent, filename)
        f.write("""<OGRVRTDataSource>
    <OGRVRTUnionLayer name="dgm1_warstein">%s
    </OGRVRTUnionLayer>
</OGRVRTDataSource>    
""" % content)       


if __name__ == '__main__':
    main()