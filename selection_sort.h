//function selection sort
//header file

#include <iostream>
using namespace std;

void selectionSort (int v[], int dim)
{
	for(int i = 0; i<dim; i++)
	{
		cin>>v[dim];
	}
	for(int j = 0; j<dim; j++)
	{
		for(int k = j+1; k<dim; k++)
		{
			if(v[k] < v[j])
			{
				change(v[k], v[j]);
			}
		}
	}
}

void change(int &a, int &b)
{
	int vapp = a;
	a = b;
	b = vapp;
}
