#include<iostream>
using namespace std;

int checkprime(int num)
{
	int i;
	int flag=1;
	for(i=2;i<=num/2;++i)
	{
		if(num%i==0)
		{
				flag=0;
				break;
		}
	}
		return flag;
}

int main()
{
	int num,i,flag;
	cout<<"Enter a positive number :";
	cin>>num;
	for(i=2;i<=num/2;++i)
	{
		if(checkprime(i))
		{
			if(checkprime(num-i))
			{
				cout<<num<<"="<<i<<"+"<<num-i<<endl;
				flag=1;
			}
		}
	}
	if(!flag)
	    cout<<num<<"Can't be expressed as sum of two prime numbers";
	    
	return 0;
}
