#include<stdio.h>
#include<stdlib.h>
#define MAX 5
int Q[30],front=0,rear=0;
void Enqueue(int ele);
int Dequeue();
void Display();
void Enqueue(int ele)
{
if(rear==MAX-1)
{
printf("Stack is full\n");
}
else
Q[rear]=ele;
rear=rear+1;
if(front==-1)
{
front=0;
}
}

int Dequeue()
{
int ele;
if(front==-1)
{
printf("Queue is empty\n");
exit(0);
}
ele=Q[front];
if(front==rear)
front=rear=-1;
else
front=front+1;
return ele;
}
void Display()
{
int i;
if(front==-1)
{
printf("Queue is empty\n");
}
for(i=front;i<rear;i++)
printf(" %d ",Q[i]);
}

void main()
{
int ch,ele,op=1;
while(op)
{
printf("\n1.Insert\n2.Delete\n3.Display\n4.Exit\n");
printf("Enter your choice\n");
scanf("%d",&ch);
switch(ch)
{
case 1:printf("Enter the element to be inserted\n");
	scanf("%d",&ele);
	Enqueue(ele);
	printf("Element inserted\n");
	break;
case 2:Dequeue();
	printf("Element deleted\n");
	break;
case 3:Display();
	break;
case 4:exit(0);
	break;
}
}
}

