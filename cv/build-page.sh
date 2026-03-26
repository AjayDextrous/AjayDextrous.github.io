#!/bin/bash

FRONTMATTER='---
layout: none
title: #"Curriculum Vitae"
permalink: /cv/
author_profile: true
relative_links: false
redirect_from:
  - /resume
---'

{
  echo "$FRONTMATTER"
  sed \
    -e 's|href="app.css"|href="{{ '"'"'/assets/css/app.css'"'"' \| relative_url }}"|' \
    -e 's|href="./Ajay_Narayanan.pdf"|href="/files/Ajay_Narayanan.pdf"|' \
    cv/index.html
} > _pages/cv.html

echo "Generated _pages/cv.html from cv/index.html"
