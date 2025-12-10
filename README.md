# ai-battle-paris

Create an account https://platform.kalavai.net

Sign up for beta tester program: https://kalavai.net/beta


## Training

https://kalavai-net.github.io/kalavai-client/managed/axolotl/

export RAY_DASHBOARD_URL="http://51.159.173.70:30570"
export HF_TOKEN="your token"
export HUB_MODEL_ID=organisation/model_name

Configure local environment:

python 3.12

python3 -m venv env
source env/bin/activate
pip install ray[default]==2.49.0


Run:

ray job submit --address $RAY_DASHBOARD_URL --entrypoint-num-cpus 1 --working-dir assets/ --runtime-env-json='{"env_vars": {"HF_TOKEN": "'$HF_TOKEN'", "HUB_MODEL_ID": "'$HUB_MODEL_ID'"}, "pip": ["torch==2.6.0", "axolotl"], "config": {"setup_timeout_seconds": 1800}}' -- axolotl train axolotl.yaml --output-dir output/ --hub-model-id $HUB_MODEL_ID


## Inference

GPUStack?