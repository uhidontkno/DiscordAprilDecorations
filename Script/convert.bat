@echo off
cd "../Animated PNG"
for %%a in (*) do python -m apnggif %%a -t 64