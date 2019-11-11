git clone https://github.com/swagger-api/swagger-codegen
cd swagger-codegen
git checkout tags/v3.0.13

mvn clean package
cp ../swagger.json ./swagger.json
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
   -i swagger.json \
   -l php \
   -o ./WKDAdmin \
   -c ./config.json
mv ./WKDAdmin/WKDAdmin ../dist
cd ..
rm -rf ./swagger-codegen
