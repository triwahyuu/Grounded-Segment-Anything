git config --global safe.directory '*'
git config --global core.editor "code --wait"
git config --global pager.branch false

echo "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" >> ~/.bashrc
echo "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.zsh_history" >> ~/.zshrc
mkdir -p /commandhistory
sudo chown -R vscode /commandhistory
touch /commandhistory/.zsh_history

# wget -q https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth -P models
# wget -q https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth -P models
# wget -q https://huggingface.co/spaces/xinyu1205/Tag2Text/resolve/main/ram_swin_large_14m.pth -P models
# wget -q https://huggingface.co/spaces/xinyu1205/Tag2Text/resolve/main/tag2text_swin_14m.pth -P models
# wget -q https://huggingface.co/xinyu1205/recognize-anything-plus-model/resolve/main/ram_plus_swin_large_14m.pth -P models

python -m pip install --no-cache-dir -e segment_anything
python -m pip install --no-cache-dir --no-build-isolation -e GroundingDINO

echo "DONE!"
