#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/base'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"
    echo "${RED}Applying ${NC}${repository} ${RED}patches...${NC}"
    git am --keep-cr "${ROOT}/device/oppo/CPH1861/patches/${repository}"/*
    cd "${ROOT}"
done
