#!/bin/bash

function colors {
  NORMAL="\e[0m"
  RED="\e[91m"
  YELLOW="\e[93m"
}

colors

function animate_logo {
  logo=(
    "████████╗██████╗ ███╗   ███╗       ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗"
    "╚══██╔══╝██╔══██╗████╗ ████║      ██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗"
    "   ██║   ██║  ██║██╔████╔██║█████╗██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║"
    "   ██║   ██║  ██║██║╚██╔╝██║╚════╝██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║"
    "   ██║   ██████╔╝██║ ╚═╝ ██║      ╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝"
    "   ╚═╝   ╚═════╝ ╚═╝     ╚═╝       ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝"
    "_____________________________________________________________________________________"
  )

  for line in "${logo[@]}"; do
    printf "${RED}%s${NORMAL}\n" "$line"
    sleep 0.1  # Adjust the sleep duration for the animation speed
  done
}

# Function to display social media links
function display_social_media_links {
  echo -e "${YELLOW}Telegram: ${NORMAL}@tdm_504"
}

# Run the animation
echo -e "\e[1m"
animate_logo

# Display social media links
display_social_media_links
