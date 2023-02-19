wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu1804-x86_64-100.3.1.tgz
tar -xf mongodb-database-tools-ubuntu1804-x86_64-100.3.1.tgz
export PATH=$PATH:/home/project/mongodb-database-tools-ubuntu1804-x86_64-100.3.1/bin
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/nosql/catalog.json
start_mongo
mongoimport -u root --authenticationDatabase admin --db catalog --collection electronics --file catalog.json
mongoexport -u root --authenticationDatabase admin --db=catalog --collection=electronics --type=csv --fields=_id,type,model --out=electronics.csv