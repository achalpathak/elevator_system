import os


MODE = os.environ["MODE"].lower()
from .base import *

print(f"{'*'*10}{'*'*len(MODE)}{'*'*10}\n{'*'*10}{MODE.upper()}{'*'*10}\n{'*'*10}{'*'*len(MODE)}{'*'*10}")

if MODE == "production":
    from .production import *
else:
    from .dev import *