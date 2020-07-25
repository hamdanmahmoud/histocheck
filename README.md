# Histo check command

This is a shell script that helps you search for previous commands entered in the Linux shell.

Long gone are the days when you would press the Upwards Arrow on your keyboard for retrieving a command that had "docker" in it and you ran it like two hours ago.

With this shell script, all you have to do is to call it with the sequence you recall, like following:

```shell
./histocheck "docker"
```

This will run the script, search for the last 10 commands (by default) in the shell history, and return you all the matching commands.

<img src="https://github.com/hamdanmahmoud/histocheck/blob/master/histocheckimage.png" />

To override the default number of commands to search for, you can call the script with the "-l" flag, just like:


```shell
./histocheck "docker" -l 50
```

### Important!

Before running the script, make sure you properly set your shell history as explained [here](https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions-on-a-linux-vps#setting-history-defaults).

Don't forget to also source the bashrc file.


