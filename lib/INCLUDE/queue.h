#ifndef __QUEUE__H
#define __QUEUE__H





typedef struct node_t
{
   unsigned char value;
   struct node_t* next;
}  TNode;
 
typedef struct queue_t
{
   TNode* head;
   TNode* tail;
}  TQueue;
 
TQueue* Push(TQueue* queue, unsigned char value);

unsigned char Pop(TQueue* queue);


char isEmpty(TQueue* queue);


#endif // __QUEUE__H