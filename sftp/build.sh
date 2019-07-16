version=`cat ./version`;
name=rishiqing/sftp
docker build -f ./Dockerfile -t $name:$version .
docker push $name:$version
