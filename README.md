# ai-battle-paris

1. Create a free account in the [Kalavai platform](https://platform.kalavai.net)

2. Sign up for [beta tester program](https://kalavai.net/beta) for free credits.


## Training

Full guide [here](https://kalavai-net.github.io/kalavai-client/managed/axolotl/). Fine tuning NousResearch/Llama-3.2-1B on the teknium/GPT4-LLM-Cleaned dataset.

1. Edit `run.sh` with your details:

- `RAY_DASHBOARD_URL`="http://51.159.173.70:30570" = <--  match your ray cluster dashboard URL
- `HF_TOKEN`="your token" # <-- use your HuggingFace Token
- `HUB_MODEL_ID`=organisation/model_name  # <-- use your HF org / username and the name you choose for the new model


Configure local environment:

```bash
# python version 3.12+
sudo apt install python3.12-venv
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
```

Run training:
```bash
sh run.sh
```

## Inference

Scalable inference with GPUStack. More details: https://kalavai-net.github.io/kalavai-client/managed/gpustack/

1. Take the UI endpoint for the GPUStack deployed in the Kalavai Platform. In my case:
```
http://51.159.173.70:30677
```

2. Open the UI in the browser.

3. Go to Workers / GPU to see your devices connected.

4. Go to Deployments to deploy models in yout cluster!

- Deploy a model in distributed nodes (multiGPU --> Qwen3 30B)
- Deploy a model with multiple replicas --> 