#!/bin/bash

# Step 1: Install jupyter-archive
pip install jupyter-archive

# Step 2: Download and rename the model to lah.safetensors
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/lah.safetensors https://civitai.com/api/download/models/162380

# Step 3: Download and rename the model to unstable.safetensors
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/unstable.safetensors https://civitai.com/api/download/models/196039

# Step 4: Download and rename the model to xl.safetensors
wget -O /workspace/stable-diffusion-webui/models/Lora/xl.safetensors https://civitai.com/api/download/models/152309

# Step 5: Download and rename the model to 4xUltra.pth
wget -O /workspace/stable-diffusion-webui/models/ESRGAN/4xUltra.pth https://civitai.com/api/download/models/125843

# Step 6: Clone the GitHub repository sd-webui-agent-scheduler
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git /workspace/stable-diffusion-webui/extensions/sd-webui-agent-scheduler

# Step 7: Clone the GitHub repository adetailer
git clone https://github.com/Bing-su/adetailer.git /workspace/stable-diffusion-webui/extensions/adetailer

# Step 8: Download and rename the vae to vae.safetensors
wget -O /workspace/stable-diffusion-webui/models/VAE/vae.safetensors https://civitai.com/api/download/models/196039?type=VAE



