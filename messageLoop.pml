	mtype = { msg };

chan c12 = [0] of { mtype, byte };  // 1 -> 2
chan c23 = [0] of { mtype, byte };  // 2 -> 3
chan c31 = [0] of { mtype, byte };  // 3 -> 1

active proctype P1()
{
	byte v_out = 1;	
	byte v_in = 0;
    	do
    		:: c12 ! msg, v_out;    // отправляем 2-му
       		c31 ? msg, v_in;    // принимаем от 3-го
    	od
}

active proctype P2()
{
	byte v_out = 2;
	byte v_in = 0;

    	do
    		:: c12 ? msg, v_in;    // принимаем от 1-го
       	c23 ! msg, v_out;    // отправляем 3-му
    	od
}

active proctype P3()
{
	byte v_out = 3;
	byte v_in = 0;
    	do
    		:: c23 ? msg, v_in;    // принимаем от 2-го
       	/*c31 ! msg, v_out;    // отправляем 1-му*/
    	od
}
