#define N 128
#define size 16
	
chan ch = [size] of { short };
chan large = [size] of { short };
chan small = [size] of { short };

proctype split()
{
short data;
again:
ch ? data;
if
:: data < 128 -> small ! data;
:: data >=128 -> large ! data;
fi;
goto again;
}

proctype merge(){
short data;
again:
if 
:: small ? data -> ch ! data;
:: large ? data -> ch ! data;
fi;
goto again;
}

init
{
run split();
run merge();
ch ! 15;
ch ! 190;

}

