#! /bin/bash

echo "building image from docker-compose-file"
docker-compose build
docker images
echo "pushing the image to hub"
<<<<<<< HEAD:build.sh
docker tag zen_app_zen_app praveengdocker/prod1:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/prod1:image${BUILD_NUMBER}
=======
docker tag zen_app_dev_region_zen_app praveengdocker/dev_region:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/dev_region:image${BUILD_NUMBER}
#echo "hello world"
>>>>>>> origin/dev_region:dev_build.sh
