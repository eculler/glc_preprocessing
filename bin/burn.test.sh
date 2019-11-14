cd ~/Documents/lsmutils && docker build --tag=lsmutils ~/Documents/lsmutils
docker run --rm -it \
  --security-opt seccomp=unconfined \
  -v /Users/elsaculler/Desktop/reproject_test:/lsmutils/out \
  -v ~/Documents/landslide/regions/preprocessing/cfg:/lsmutils/cfg \
  -t lsmutils:latest \
  conda run -n lsmutils python -m lsmutils \
  /lsmutils/cfg/burn.reproject.test.cfg.yaml
