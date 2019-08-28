#include <iostream>
using namespace std;

typedef struct _element {
    struct _element *previous;
    struct _element *next;
    void *value;
} element;

typedef struct _queue {
    element *head;
    element *end;
    size_t size;
} queue;

queue* new_queue(void *value)
{
    element *item = (element *) malloc(sizeof(element));
    item->value = value;
    item->previous = NULL;
    item->next = NULL;
    
    queue *a_queue = (queue *) malloc(sizeof(queue));
    a_queue->head = item;
    a_queue->end = item;
    a_queue->size = 1;
    return a_queue;
}

void push(queue *a_queue, void *value)
{
    element *item = (element *) malloc(sizeof(element));
    item->value = value;
    
    item->previous = a_queue->end;
    item->next = NULL;
    
    a_queue->end->next = item;
    a_queue->end = item;
    a_queue->size = a_queue->size + 1;
}

element* pop(queue *a_queue)
{
    element *item = a_queue->end;
    
    a_queue->end = a_queue->end->previous;
    item->previous = NULL;
    a_queue->end->next = NULL;
    
    a_queue->size = a_queue->size - 1;
    
    return item;
}

void stats(queue *a_queue)
{
    cout << "current queue size: " << a_queue->size << endl;
    
    cout << "current queue: " << endl;
    cout << "<----- content -----" << endl;
    element *item = a_queue->head;
    while (item) {
        cout << (size_t) item->value << endl;
        item = item->next;
    }
    cout << "----- content ----->" << endl;
}

int main(int argc, char **argv)
{

    queue* a_queue = new_queue((size_t *) 1);

    push(a_queue, (size_t *) 2);

    stats(a_queue);

    element *item = pop(a_queue);

    stats(a_queue);

    cout << (size_t)item->value << endl;

    return EXIT_SUCCESS;
}
