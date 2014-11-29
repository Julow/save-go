# Save Go

`save` and `go` commands.

`save` command save the current _path_.

`go` command move to the last saved _path_.

You can **name** saved paths.

`go 1` move you to `save 1`

`go libft` move you to `save libft`

_The name is optional._<br />
_The name cannot contains white space._

## Installation

Add these functions to your _rc_ file. (**.zshrc**, .bash_aliases, .profile, .bashrc, etc...)

```shell
function save()
{
	if [ ! -d ~/save_path ]; then
		mkdir ~/save_path
	fi
	pwd > ~/save_path/$1.save_path;
};

function go()
{
	if [ -f ~/save_path/$1.save_path ]; then
		cd `cat ~/save_path/$1.save_path`;
	else
		echo "The save $1 does not exists.";
	fi
};
```

_You can change the command name by changing the function name._
