#include <stdlib.h>
#include <stdio.h>

void main() {
    FILE* f1 = fopen("abc.txt", "r");
    FILE* f2 = fopen("xyz.txt", "w");

    char ch = fgetc(f1);

    while (ch != EOF) {
        if (ch == '/') {
            char next = fgetc(f1);
            if (next == '/') {
                while (ch != '\n' && ch != EOF) {
                    ch = fgetc(f1);
                }
                if (ch != EOF) {
                    fputc(ch, f2); 
                    ch = fgetc(f1);
                }
            } else if (next == '*') {
                ch = fgetc(f1);
                char prev = 0;
                while (!(prev == '*' && ch == '/') && ch != EOF) {
                    prev = ch;
                    ch = fgetc(f1);
                }
                ch = fgetc(f1); 
            } else {
                fputc('/', f2);
                if (next != EOF) {
                    fputc(next, f2);
                    ch = fgetc(f1);
                } else {
                    break;
                }
            }
        } else {
            fputc(ch, f2);
            ch = fgetc(f1);
        }
    }
}