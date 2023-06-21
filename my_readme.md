```sh
pip install -r requirements.txt
pip install -e ./stable-baselines3
pip install 'gymnasium[mujoco]'
pip install 'gym[accept-rom-license]'

python3 -m pytest -v tests/test_env_checker.py
make pytest
```