#ifndef __QUEUE__H
#define __QUEUE__H





typedef struct node_t
{
   char value;
   struct node_t* next;
}  TNode;
 
typedef struct queue_t
{
   TNode* head;
   TNode* tail;
}  TQueue;
 
TQueue* Push(TQueue* queue, char value);

char Pop(TQueue* queue);


char isEmpty(TQueue* queue);
//void Print(TQueue* queue);


#endif // __QUEUE__H