#!/bin/sh

`aws ecr get-login --region ap-northeast-1 --no-include-email`

image_tags=$(aws ecr list-images --repository-name delish-server | jq -r '.imageIds[].imageTag' | grep -E '^develop-[0-9]{3,3}$') 

counter=0
for image_tag in $image_tags; do
  counter=$(expr $counter + 1)
  images="${images} imageTag=${image_tag}"

  if [ $counter == "100" ]; then
    break
  fi
done

echo aws ecr batch-delete-image --repository-name delish-server --image-ids $images
