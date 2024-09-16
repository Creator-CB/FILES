
INSTALL
bash <(curl -s https://raw.githubusercontent.com/Creator-CB/FILES/main/allora.sh)

CHANGE RPC
bash <(curl -s https://raw.githubusercontent.com/Creator-CB/FILES/main/Allora-worker-rpcchange.sh)

LOGS
docker-compose -f /home/config/docker/docker-compose/allora-huggingface-walkthrough/docker-compose.yaml logs -f


curl http://localhost:18000/inference/ETH

DELETE:
docker-compose -f $HOME/allora-huggingface-walkthrough/docker-compose.yaml down -v

rm -rf allora-chain basic-coin-prediction-node allora-huggingface-walkthrough .allorad
