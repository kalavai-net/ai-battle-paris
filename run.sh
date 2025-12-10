# Configure GPU pool and credentials
export RAY_DASHBOARD_URL="http://51.159.173.70:30191"
export HF_TOKEN="<your token>"
export HUB_MODEL_ID=kalavai/ai-battle

# submit training job (under assets/)
ray job submit --address $RAY_DASHBOARD_URL --entrypoint-num-cpus 1 --working-dir assets/ --runtime-env-json='{"env_vars": {"HF_TOKEN": "'$HF_TOKEN'", "HUB_MODEL_ID": "'$HUB_MODEL_ID'"}, "pip": ["torch==2.6.0", "axolotl"], "config": {"setup_timeout_seconds": 1800}}' -- axolotl train axolotl.yaml --output-dir output/ --hub-model-id $HUB_MODEL_ID
