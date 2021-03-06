#
# Save-Go
#
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

function saved()
{
	if [ -d ~/save_path ]; then
		ls -1 ~/save_path | grep ".save_path" | sed -E "s/.save_path$//"
	fi
}
