#! /bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)
echo $branch
if [ "$branch" == "dev" ]; then
echo "building image from docker-compose-file"
docker-compose build
docker images
echo "pushing the image to hub"
docker tag subproject_zenapp praveengdocker/dev_region:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/dev_region:image${BUILD_NUMBER}
elif [ "$branch" == "main" ];
echo "building image from docker-compose-file"
docker-compose build
docker images
echo "pushing the image to hub"
docker tag subproject_zenapp praveengdocker/prod_region1:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/prod_region1:image${BUILD_NUMBER}
fi
