#! /bin/bash

echo "building image from docker-compose-file"
docker-compose build
docker images
echo "pushing the image to hub"
docker tag zen_app_prod_region_zen_app praveengdocker/prod_region1:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/prod_region1:image${BUILD_NUMBER}
