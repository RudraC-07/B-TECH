#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int size = 0;

struct Node {
    int data;
    struct Node *next;
};

struct Node *front = NULL;
struct Node *rear = NULL;

void enqueue(int n) {
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = n;
    newNode->next = NULL;

    if (rear == NULL) {
        // First element
        front = rear = newNode;
    } else {
        rear->next = newNode;
        rear = newNode;
    }
    size++;
}

int dequeue() {
    if (front == NULL) {
        printf("Queue is empty.\n");
        return -1;
    }

    struct Node *temp = front;
    int val = temp->data;
    front = front->next;
    free(temp);
    size--;

    if (front == NULL) {
        rear = NULL;
    }

    return val;
}

int peek() {
    if (front == NULL) {
        printf("Queue is empty.\n");
        return -1;
    }
    return front->data;
}

void display() {
    if (front == NULL) {
        printf("Queue is empty.\n");
        return;
    }

    struct Node *temp = front;
    printf("Queue: ");
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

void clearQueue() {
    while (front != NULL) {
        struct Node *temp = front;
        front = front->next;
        free(temp);
    }
    rear = NULL;
    size = 0;
}

int main() {
    bool isContinue = true;

    while (isContinue) {
        printf("\n\n[1] Enqueue\n[2] Dequeue\n[3] Peek\n[4] Display\n[5] Exit");
        printf("\nEnter your choice: ");
        int choice;
        scanf("%d", &choice);

        switch (choice) {
        case 1: {
            int n;
            printf("Enter element to enqueue: ");
            scanf("%d", &n);
            enqueue(n);
            break;
        }

        case 2: {
            int val = dequeue();
            if (val != -1) {
                printf("Dequeued element = %d\n", val);
            }
            break;
        }

        case 3: {
            int val = peek();
            if (val != -1) {
                printf("Front element = %d\n", val);
            }
            break;
        }

        case 4:
            display();
            break;

        case 5:
            clearQueue();
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
