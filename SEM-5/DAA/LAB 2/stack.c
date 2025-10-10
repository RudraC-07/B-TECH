#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int size = 0;

struct Node {
    int data;
    struct Node *next;
} *head = NULL;

void push(int n) {
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = n;
    newNode->next = head;
    head = newNode;
    size++;
}

int pop() {
    if (head == NULL) {
        printf("Stack is empty.\n");
        return -1;
    }
    struct Node *temp = head;
    int val = temp->data;
    head = head->next;
    free(temp);
    size--;
    return val;
}

void display() {
    if (head == NULL) {
        printf("Stack is empty.\n");
        return;
    }
    struct Node *node = head;
    printf("Stack: ");
    while (node != NULL) {
        printf("%d ", node->data);
        node = node->next;
    }
    printf("\n");
}

int peep(int ind) {
    if (ind >= size || ind < 0) {
        printf("Out of range\n");
        return -1;
    }
    struct Node *node = head;
    for (int i = 0; i < ind; i++) {
        node = node->next;
    }
    return node->data;
}

void clearStack() {
    while (head != NULL) {
        struct Node *temp = head;
        head = head->next;
        free(temp);
    }
    size = 0;
}

int main() {
    bool isContinue = true;

    while (isContinue) {
        printf("\n[1] Push\n[2] Pop\n[3] Peep\n[4] Display\n[5] Exit");
        printf("\nEnter your choice: ");
        int choice;
        scanf("%d", &choice);

        switch (choice) {
        case 1: {
            int n;
            printf("Enter element to push: ");
            scanf("%d", &n);
            push(n);
            break;
        }

        case 2: {
            int val = pop();
            if (val != -1) {
                printf("Popped element = %d\n", val);
            }
            break;
        }

        case 3: {
            int n;
            printf("Enter index to peep (0-based): ");
            scanf("%d", &n);
            int val = peep(n);
            if (val != -1) {
                printf("Element at index %d = %d\n", n, val);
            }
            break;
        }

        case 4:
            display();
            break;

        case 5:
            clearStack(); 
            isContinue = false;
            printf("Exiting...\n");
            break;

        default:
            printf("Invalid choice.\n");
            break;
        }
    }

    return 0;
}