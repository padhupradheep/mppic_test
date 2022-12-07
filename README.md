# mppic_test
test package for MPPIC before nav2 release

Install all the dependencies for neo_simulation2 by following the simple steps

```
cd your_workspace/src
git clone git@github.com:padhupradheep/mppic_test.git
cd mppic_test
./setup-simulation.sh
```

once done.. 

run:

```
ros2 launch neo_simulation2 simulation.launch.py
ros2 launch neo_simulation2 navigation.launch.py
```

