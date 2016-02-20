echo "Creating directory if not exists" 
mkdir -p /home/omega/temp/geoipupdate
cd /home/omega/temp/geoipupdate

echo "Removing old files"
rm ipToCountry.*

echo "downloading new import"
wget -O ipToCountry.csv.gz "http://software77.net/geo-ip/?DL=1&x=Download"

echo "extracing file" 
gunzip ipToCountry.csv.gz 

echo "running import"
/home/omega/bin/jstart.pl /home/omega/apps/OmegaCms/ com.omega.commons.auto.UpdateGeoIpTablesJob /home/omega/temp/geoipupdate/ipToCountry.csv

