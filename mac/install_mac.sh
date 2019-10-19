#! /bin/bash


echo "change key from '₩' to '\`'"
keybinding_file=~/Library/KeyBindings/DefaultkeyBinding.dict
if [ -f "$keybinding_file" ]; then
    echo "$keybinding_file already exists"
    exit 1
fi

cat > $keybinding_file <<EOF
{
  "₩" = ("insertText:", "\`");
}
EOF
