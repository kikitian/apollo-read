#!/usr/bin/env bash

###############################################################################
# Copyright 2018 The Apollo Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

# Fail on first error.
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

apt update -y && apt install -y \
    libgeos-dev \
    python-matplotlib \
    python-pip \
    python-psutil \
    python-scipy \
    python3-matplotlib \
    python3-pip \
    python3-psutil \
    python3-scipy \
    software-properties-common 

pip2 install --no-cache-dir -r py27_requirements.txt
pip3 install --no-cache-dir -r py3_requirements.txt

# Clean up.
apt-get clean && rm -rf /var/lib/apt/lists/*