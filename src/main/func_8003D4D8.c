typedef struct Node {
    struct Node *next;
    struct Node *prev;
} Node;

void func_8003D4D8(Node *node, Node *list) {
    node->next = list->next;
    node->prev = list;
    if (list->next != 0) {
        list->next->prev = node;
    }
    list->next = node;
}
