typedef struct Node { struct Node *next; } Node;

void func_80047CE8(Node *list, Node *item) {
    register Node *prev = list;
    register Node *cur = prev->next;

    while (cur != 0) {
        if (cur == item) {
            prev->next = item->next;
            break;
        }
        prev = cur;
        cur = prev->next;
    }
}
