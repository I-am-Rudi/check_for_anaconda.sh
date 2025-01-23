# check_for_anaconda.sh
Script to check all environments except `base` for `anaconda` channel.

Now that Anaconda is enforcing the terms of its paid model for commercial use, it might be necessary to sheck all environments for the `anaconda` channel. The script does exactly that and lists all packages installed using the `anaconda` channel under their respective environment.

From `base` environment simply run

```
bash check_for_anaconda.sh
```
