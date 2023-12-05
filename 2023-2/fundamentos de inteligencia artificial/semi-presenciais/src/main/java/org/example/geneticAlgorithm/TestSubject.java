package org.example.geneticAlgorithm;

public class TestSubject {
    private int weight1;
    private int weigh2;
    private int entry1;
    private int entry2;

    public TestSubject(int weight1, int entry1, int weight2, int entry2) {
        this.weight1 = weight1;
        this.entry1 = entry1;
        this.weigh2 = weight2;
        this.entry2 = entry2;
    }

    public TestSubject(){
        this.entry1 = getRandomInt();
        this.weight1 = getRandomInt();
        this.entry2 = getRandomInt();
        this.weigh2 = getRandomInt();
    }

    private static int getRandomInt() {
        return Math.random()> 0.5
                ? 1
                :0;
    }

    public int getWeight1() {
        return weight1;
    }

    public void setWeight1(int weight1) {
        this.weight1 = weight1;
    }

    public int getWeigh2() {
        return weigh2;
    }

    public void setWeigh2(int weigh2) {
        this.weigh2 = weigh2;
    }

    public int getEntry1() {
        return entry1;
    }

    public void setEntry1(int entry1) {
        this.entry1 = entry1;
    }

    public int getEntry2() {
        return entry2;
    }

    public void setEntry2(int entry2) {
        this.entry2 = entry2;
    }

    @Override
    public String toString() {
        return "\n TestSubject{" +
                "weight1=" + weight1 +
                ", weigh2=" + weigh2 +
                ", entry1=" + entry1 +
                ", entry2=" + entry2 +
                '}';
    }
}
