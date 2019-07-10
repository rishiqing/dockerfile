version=`cat ./version`;
name=rishiqing/front-deploy
docker build -f ./Dockerfile -t $name:$version .
docker push $name:$version
