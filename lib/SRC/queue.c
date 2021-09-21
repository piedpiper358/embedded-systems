#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "queue.h"



//-----------------------------------------------------------------------------
// Функция добавления элемента в очередь
TQueue* Push(TQueue* queue, unsigned char value)
{
    // Создание нового узла
    TNode* node = malloc(sizeof(TNode));
    // Присваиваем значение новому узлу
    node->value = value;
    // Т.к. элемент добавляется в хвост, то указатель
    // на следующий элемент ни на что не ссылается
    node->next = NULL;
 
    // Если очередь не пуста, то ...
    if (queue->head && queue->tail)
    {
        // Хвостовой элемент теперь ссылается на
        // созданный узел
        queue->tail->next = node;
        // Созданный узел становится хвостом
        queue->tail = node;
    }
    else
    {
        // О-о-о... Первый элемент, теперь он и
        // вершина и хвост
        queue->head = queue->tail = node;
    }
 
    return queue;
}
//-----------------------------------------------------------------------------
// Извлечение элемента из очереди
unsigned char Pop(TQueue* queue)
{
    unsigned char value = 0;
    TNode* node;
 
    // Пока есть элементы в очереди
    if (queue->head)
    {
        // Сохраняем указатель на удаляемый элемент
        node = queue->head;
        // Сохраняем значение удаляемого элемента
        value = node->value;
        // Вершиной очереди становится следующий за удаляемым элемент
        queue->head = queue->head->next;
        // Окончательно удаляем элемент
        free(node);
    }
 
    return value;
}


char isEmpty(TQueue* queue)
{
   return queue->head==NULL;
}