#!/bin/bash

modelPath="/mnt/Fast_Storage/stable-diffusion-webui/models/Stable-diffusion/"
downloadPath="https://civitai.com/api/download/models/"
esrganPath="/mnt/Fast_Storage/stable-diffusion-webui/models/ESRGAN/"
vaePath="/mnt/Fast_Storage/stable-diffusion-webui/models/VAE/"
extensionPath="/mnt/Fast_Storage/stable-diffusion-webui/extensions/"

# Lora Path
lora="/mnt/Fast_Storage/stable-diffusion-webui/models/Lora/"
manwhaLora="/mnt/Fast_Storage/stable-diffusion-webui/models/Lora/manwha_characters/"
animeLora="/mnt/Fast_Storage/stable-diffusion-webui/models/Lora/anime_characters/"
nsfwLora="/mnt/Fast_Storage/stable-diffusion-webui/models/Lora/nsfw/"
celebLora="/mnt/Fast_Storage/stable-diffusion-webui/models/Lora/celeb/"

# activating virtual environment
conda activate stable_diffusion

# Installing models:

# majicmix-realistic
# wget -O "$modelPath majicmix-realistic.safetensors" "$downloadPath 176425"

# epicPhotoGasm
# wget -O "$modelPath epicPhotoGasm.safetensors" "$downloadPath 201259"

# Aniverse
# wget -O "$modelPath Aniverse.safetensors" "$downloadPath 180845"

# perfectworld
# wget -O "$modelPath perfectworld.safetensors" "$downloadPath 179446"

# yesmix
# wget -O "$modelPath yesmix.safetensors" "$downloadPath 182252"

# realCartoon3D
# wget -O "$modelPath realCartoon3D.safetensors" "$downloadPath 198698"

# animerge
# wget -O "$modelPath animerge.safetensors" "$downloadPath 175714"

# HentaiCheckpoint
# wget -O "$modelPath HentaiCheckpoint.safetensors" "$downloadPath 87825"

# fantasticMix
# wget -O "$modelPath fantasticMix.safetensors" "$downloadPath 192339"

# darkSun
# wget -O "$modelPath darkSun.safetensors" "$downloadPath 130121"

# RaemuMix
# wget -O "$modelPath RaemuMix.safetensors" "$downloadPath 180919"

# raenaMix
# wget -O "$modelPath raenaMix.safetensors" "$downloadPath 178545"

# xeroxRealMix
# wget -O "$modelPath xeroxRealMix.safetensors" "$downloadPath 178305"

# AnReal
# wget -O "$modelPath AnReal.safetensors" "$downloadPath 182593"

# raesanMix
# wget -O "$modelPath raesanMix.safetensors" "$downloadPath 189725"

# helloK3
# wget -O "$modelPath helloK3.safetensors" "$downloadPath 179005"

# zhMix_Realistic
# wget -O "$modelPath zhMix_Realistic.safetensors" "$downloadPath 198132"

# anyLoraCheckpoint
# wget -O "$modelPath anyLoraCheckpoint.safetensors" "$downloadPath 186800"

# againMix
# wget -O "$modelPath againMix.safetensors" "$downloadPath 201750"

# kakarot
# wget -O "$modelPath kakarot.safetensors" "$downloadPath 205068"

# kawaiiRealisticMangaMix
# wget -O "$modelPath kawaiiRealisticMangaMix.safetensors" "$downloadPath 175117"

# -----------------------------------------------
# -----------------------------------------------

# Downloading all ESRGAN required
# wget -O "$esrganPath 4xUltraSharp.pth" "$downloadPath 125843"
# wget -O "$esrganPath ESRGAN.pth" "$downloadPath 106813"

# Downloading all VAE
# wget -O "$vaePath color.safetensors" "$downloadPath 83798"
wget -O "$vaePath vae-ft-ema-560000.safetensors" "$downloadPath 124628"
wget -O "$vaePath matrix_vae.safetensors" "$downloadPath 114076"
wget -O "$vaePath lastpiece_vae.safetensors" "$downloadPath 177582"
wget -O "$vaePath z-vae.safetensors" "$downloadPath 183895"
wget -O "$vaePath voidnoise-vae.safetensors" "$downloadPath 177589"
wget -O "$vaePath kl-fe-anime-vae.safetensors" "$downloadPath 131654"
wget -O "$vaePath difConsistencyRaw-vae.safetensors" "$downloadPath 94036"
wget -O "$vaePath mse-840000-vae.safetensors" "$downloadPath 80869"

# Installing all extensions

# agent scheduler
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git "$extensionPath sd-webui-agent-scheduler"

# adetailer 
git clone https://github.com/Bing-su/adetailer.git "$extensionPath adetailer"

# Installing all things required for adetailer
sleep 2s
python /mnt/Fast_Storage/stable-diffusion-webui/extensions/adetailer/install.py

# Installing civitai helper
git clone https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper.git "$extensionPath Stable-Diffusion-Webui-Civitai-Helper"



