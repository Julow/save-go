# Save Go

`save` and `go` commands.

`save` command save the current _pwd_.

`go` command move to the last saved _pwd_.

You can **name** saved pwds.

`go 1` move you to `save 1`

`go libft` move you to `save libft`

## Installation

Add this functions to your _rc_ file. (**.zshrc**, .bash_aliases, .profile, .bashrc, etc...)

```shell
function save()
{
	pwd > ~/save$1.tmp;
};

function go()
{
	cd `cat ~/save$1.tmp`;
};
```

_You can change the command name by changing the function name._
