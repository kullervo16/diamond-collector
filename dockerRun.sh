sudo docker stop diamond
sudo docker rm diamond
sudo docker run -d -v $PWD/etc:/etc/diamond --net=host --name diamond diamond-collector 
sudo docker logs -f diamond
