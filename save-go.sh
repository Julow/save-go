
function save()
{
	pwd > ~/save$1.tmp;
};

function go()
{
	cd `cat ~/save$1.tmp`;
};
