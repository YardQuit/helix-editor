#!/usr/bin/env python3

import subprocess
import textwrap

# download a paragraph of Lorem Ipsum text from a website
paragraph = subprocess.run(["curl", "-s", "https://loripsum.net/api/1/short/plaintext"], capture_output=True).stdout.decode().strip()

# split the text into lines, preserving the integrity of words
lines = textwrap.wrap(paragraph, width=80)

# print each line
for line in lines:
    print(line)