#include <iostream>
using namespace std;

typedef struct _element {
    struct _element *previous;
    struct _element *next;
    void *value;
} element;

typedef struct _stack {
    element *head;
    element *end;
    int size;
} stack;

stack* new_stack(void *value)
{
    element *item = (element *) malloc(sizeof(element));
    item->value = value;
    item->previous = NULL;
    item->next = NULL;
    
    stack *a_stack = (stack *) malloc(sizeof(stack));
    a_stack->head = item;
    a_stack->end = item;
    a_stack->size = 1;
    return a_stack;
}

void push(stack *a_stack, void *value)
{
    element *item = (element *) malloc(sizeof(element));
    item->value = value;
    
    item->previous = a_stack->end;
    item->next = NULL;
    
    a_stack->end->next = item;
    a_stack->end = item;
    a_stack->size = a_stack->size + 1;
}

element* pop(stack *a_stack)
{
    element *item = a_stack->head;
    
    a_stack->head = a_stack->head->next;
    item->next = NULL;
    a_stack->head->previous = NULL;
    
    a_stack->size = a_stack->size - 1;
    
    return item;
}

void stats(stack *a_stack)
{
    cout << "current stack size: " << a_stack->size << endl;
    
    cout << "current stack : " << endl;
    cout << "<----- content -----" << endl;
    element *item = a_stack->head;
    while (item) {
        cout << (int)(size_t) item->value << endl;
        item = item->next;
    }
    cout << "----- content ----->" << endl;
}

int main(int argc, char **argv)
{

    stack* a_stack = new_stack((int *) 1);

    push(a_stack, (int *) 2);

    stats(a_stack);

    element *item = pop(a_stack);

    stats(a_stack);

    cout << (size_t)item->value << endl;

    return EXIT_SUCCESS;
}

