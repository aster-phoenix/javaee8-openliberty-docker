# Build
mvn clean package && docker build -t xyz.pretsa/OpenLibertyTest .

# RUN

docker rm -f OpenLibertyTest || true && docker run -d -p 8080:8080 -p 4848:4848 --name OpenLibertyTest xyz.pretsa/OpenLibertyTest 