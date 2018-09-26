#include <iostream>
using namespace std;

int main()
{
	int result;
	int size = 201;
	int *h1, *h2, *h3;
	char input[10] = { 'c','r','a','c','k','m','e','i','d','e' };
	h1 = new int[201];
	h2 = new int[201];
	h3 = new int[201];
	int *heep[3] = { h1,h2,h3 };
	int output[201] = { 0 };

	//----------------------------------------------------------------------//
	char * re;
	char ascii[72] = { 0 };
	for (int i = 0; i <= 71; ++i)
	{
		re = (char *)i;
		ascii[i] = ((signed int)*(input + i / 8) >> (7 - (char)i % 8)) & 1;
	}
	//ascii change
	int in;
	char* ascii__ = ascii;
	for (int i = 0; i <= 2; ++i)
	{
		//v10 += *(&v4 + j);
		//result = (char *)(unsigned int)(*(&v4 + j + 1) - 1);
		for (int k = (23 + i)- 1; k >= 0; --k)
		{
			in = *ascii__;
			heep[i][k] = in;
			++ascii__;
		}
	}

	//23,24,25Ã¤¿ì±â
	//----------------------------------------------------------------------//


	
	for (int i = 0;; i++)
	{
	result = size - 23;
	if (result <= i)
	break;
	heep[0][i + 23] = heep[0][ + i + 5] ^ heep[0][ + i];
	}
	///heap1
	for (int i = 0; ; ++i)
	{
		result = (size - 24);
		if (result <= i)
			break;
		heep[1][ + i + 24] = heep[1][ + i + 1] ^ heep[1][ + i + 3] ^ heep[1][ + i + 4] ^ heep[1][ + i];
	}
	//heap2
	for (int i = 0; ; ++i)
	{
		result = (size - 25);
		if (result <= i)
			break;
		heep[2][ + i + 25] = heep[2][ + i + 3] ^ heep[2][ + i];
	}
	//heap3
	for (int k = 0; ; ++k)
	{
		result = k;
		if (k >= (signed int)size)
			break;
		output[k] = heep[1][ + k] & heep[2][ + k] ^ heep[1][ + k] & heep[0][ + k] ^ heep[2][ + k];
	}
	//----------------------------------------------------------------------//
	for (int i = 0; i < 201; i++)\
		cout << output[i] << " ";



	return 0;
}
