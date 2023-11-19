#!/bin/bash

# Step 1: Install jupyter-archive
pip install jupyter-archive

# Step 2: Download and rename the model to lah.safetensors
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/lah.safetensors https://civitai.com/api/download/models/162380

# Step 3: Download and rename the model 
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/unstable.safetensors https://civitai.com/api/download/models/209647
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/fantasy.safetensors https://civitai.com/api/download/models/200225
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/staranimate.safetensors https://civitai.com/api/download/models/182077
wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/enjoy.safetensors https://civitai.com/api/download/models/209402
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/unstable_old.safetensors https://civitai.com/api/download/models/174609
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/megaHeaven.safetensors https://civitai.com/api/download/models/192793
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/realcartoon.safetensors https://civitai.com/api/download/models/171099
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/copax.safetensors https://civitai.com/api/download/models/198246
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/cherry.safetensors https://civitai.com/api/download/models/173768
# wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/guo.safetensors https://civitai.com/api/download/models/199325

# Step 4: Installing necessary Loras
wget -O /workspace/stable-diffusion-webui/models/Lora/xl.safetensors https://civitai.com/api/download/models/152309
wget -O /workspace/stable-diffusion-webui/models/Lora/cyberpunk.safetensors https://civitai.com/api/download/models/175280
wget -O /workspace/stable-diffusion-webui/models/Lora/fireElement.safetensors https://civitai.com/api/download/models/175257
wget -O /workspace/stable-diffusion-webui/models/Lora/sacredBeast.safetensors https://civitai.com/api/download/models/178749
wget -O /workspace/stable-diffusion-webui/models/Lora/suit.safetensors https://civitai.com/api/download/models/192932
wget -O /workspace/stable-diffusion-webui/models/Lora/cyberpunkStyle.safetensors https://civitai.com/api/download/models/186045
wget -O /workspace/stable-diffusion-webui/models/Lora/waterElement.safetensors https://civitai.com/api/download/models/185302
wget -O /workspace/stable-diffusion-webui/models/Lora/liquidDress.safetensors https://civitai.com/api/download/models/175798
wget -O /workspace/stable-diffusion-webui/models/Lora/scythe.safetensors https://civitai.com/api/download/models/165513
wget -O /workspace/stable-diffusion-webui/models/Lora/blademancer.safetensors https://civitai.com/api/download/models/132663
wget -O /workspace/stable-diffusion-webui/models/Lora/yamerstyle.safetensors https://civitai.com/api/download/models/173530



# Step 5: Download and rename the model to 4xUltra.pth
wget -O /workspace/stable-diffusion-webui/models/ESRGAN/4xUltra.pth https://civitai.com/api/download/models/125843

# Step 6: Clone the GitHub repository sd-webui-agent-scheduler
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git /workspace/stable-diffusion-webui/extensions/sd-webui-agent-scheduler


# Step 7: Clone the GitHub repository adetailer
git clone https://github.com/Bing-su/adetailer.git /workspace/stable-diffusion-webui/extensions/adetailer

# Step 8: Clone the GitHub repository autocompletion
git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git /workspace/stable-diffusion-webui/extensions/

# Step 8: Download and rename the vae to vae.safetensors
wget -O /workspace/stable-diffusion-webui/models/VAE/vae.safetensors https://civitai.com/api/download/models/196039?type=VAE

# Install adetailer
python3 /workspace/stable-diffusion-webui/extensions/adetailer/install.py



