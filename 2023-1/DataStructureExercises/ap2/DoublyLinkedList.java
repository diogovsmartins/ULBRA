package org.exercises.ap2;

import java.util.Optional;

public class DoublyLinkedList {

    private Node head;
    private Node tail;

    public DoublyLinkedList() {
        head = null;
        tail = null;
    }


    public void insertNodeAtEnd(final int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            tail = newNode;
        } else {
            newNode.setPrevious(tail);
            tail.setNext(newNode);
            tail = newNode;
        }
    }

    public void insertNodeAtBeginning(final int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            tail = newNode;
        } else {
            newNode.setNext(head);
            head.setPrevious(newNode);
            head = newNode;
        }
    }

    public void removeNodeAtEnd() {
        if (tail == null) {
            System.out.println("List is empty. Nothing to remove.");

        } else if (head == tail) {
            head = null;
            tail = null;
        } else {
            tail = tail.getPrevious();
            tail.setNext(null);
        }
    }

    public void removeNodeAtBeginning() {
        if (head == null) {
            System.out.println("List is empty. Nothing to remove.");

        } else if (head == tail) {
            head = null;
            tail = null;
        } else {
            head = head.getNext();
            head.setPrevious(null);
        }
    }

    public void displayList() {
        Node currentNode = head;
        StringBuilder listOfNodes = new StringBuilder();
        while (currentNode != null) {
            listOfNodes.append(currentNode.getData()).append(" ");
            currentNode = currentNode.getNext();
        }
        System.out.println(listOfNodes);
    }

    public void displayListInReverseOrder() {
        Node currentNode = head;
        StringBuilder listOfNodes = new StringBuilder();
        while (currentNode != null) {
            listOfNodes.append(currentNode.getData()).append(" ");
            currentNode = currentNode.getNext();
        }
        System.out.println(listOfNodes.reverse().delete(0, 1));
    }

    public void getElementAtGivenPosition(final int desiredIndex) {
        int currentNodeIndex = 0;
        Node nodeAtCurrentIndex = head;
        if (desiredIndex <= 0) Optional.ofNullable(nodeAtCurrentIndex).ifPresent(node -> System.out.println(node.getData()));
        do {
            try {
                nodeAtCurrentIndex = nodeAtCurrentIndex.getNext();
            }catch (Exception e){
                e.getMessage();
                System.out.println("Index doesn't exist");
            }
            currentNodeIndex++;
        } while (desiredIndex != currentNodeIndex && nodeAtCurrentIndex != null);
        Optional.ofNullable(nodeAtCurrentIndex).ifPresent(node -> System.out.println(node.getData()));
    }

}
