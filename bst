1. 8) Write a program
a) To construct a binary Search tree.
b) To traverse the tree using all the methods i.e., in-order, preorder and post order
c) To display the elements in the tree.
#include<stdio.h>

struct node{
    int data;
    struct node* rightchild;
    struct node* leftchild;
};

struct node* newnode(int x){
struct node* temp;
temp = malloc(sizeof(struct node));
temp->data = x;
temp->leftchild = NULL;
temp->rightchild = NULL;
return temp;
};

struct node * insert(struct node* root, int x){
if(root == NULL){
    return newnode(x);
}
else if(x>root->data){
    root->rightchild = insert(root->rightchild,x);
}
else{
    root->leftchild = insert(root->leftchild,x);
}
return root;
};

void inorder(struct node *root){
if(root!=NULL){
    inorder(root->leftchild);
    printf("%d\t",root->data);
    inorder(root->rightchild);
}

}

void postorder(struct node *root){
    if(root!=NULL){
        postorder(root->leftchild);
        postorder(root->rightchild);
        printf("%d\t", root->data);
    }

}
void preorder(struct node *root){
    if(root!=NULL){

        printf("%d\t", root->data);
        preorder(root->leftchild);
        preorder(root->rightchild);
    }

}

void main(){
struct node * root;
root = newnode(10);
root=insert(root,12);
root=insert(root,5);
root=insert(root,4);
root=insert(root,20);
root=insert(root,8);
root=insert(root,7);
root=insert(root,15);
root=insert(root,2);
root=insert(root,13);
printf("Inorder sequence is-\n");
inorder(root);
printf("\nPostorder sequence is-\n");
postorder(root);
printf("\nPreorder sequence is-\n");
preorder(root);
}
