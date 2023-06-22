```sh
pip install -r requirements.txt
pip install -e ./stable-baselines3
pip install 'gymnasium[mujoco]'
pip install 'gym[accept-rom-license]'

# currently only two tests fail, and the render one I believe doesn't fail in practice
# FAILED stable-baselines3/tests/test_vec_envs.py::test_render[SubprocVecEnv] - EOFError
# FAILED tests/test_hyperparams_opt.py::test_optimize[tqc-parking-v0-median-random] - AssertionError: 1 != 0
python3 -m pytest -v tests/test_env_checker.py
make pytest
```