package org.example.geneticAlgorithm;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class GeneticAlgorithm {
    public static void main(String[] args) {
        List<TestSubject> testSubjects = new ArrayList<>();
        createTestSubjects(testSubjects);
        System.out.println("Initial population: " + testSubjects);
        testAptitude(testSubjects);
        adaptTestSubjects(testSubjects);
        System.out.println("Population after adaptation: "+ testSubjects);
    }

    private static void createTestSubjects(final List<TestSubject> testSubjects) {
        for (int i = 0; i < 10; i++) {
            testSubjects.add(new TestSubject());
        }
    }

    private static void testAptitude(final List<TestSubject> testSubjects) {
        for (int i = 0; i < 6; i++) {
            testSubjects.remove(new Random().nextInt(((testSubjects.size() - 1))));
        }
    }

    private static void adaptTestSubjects(final List<TestSubject> testSubjects) {
        List<TestSubject> subjectsToMutate = testSubjects.subList(0, 2);
        List<TestSubject> subjectsToCrossOver = testSubjects.subList(2, 4);
        testSubjects.addAll(
                Stream.concat(
                                mutateSubjects(subjectsToMutate).stream(),
                                crossOverSubjects(subjectsToCrossOver).stream())
                        .collect(Collectors.toList()));
    }

    private static List<TestSubject> crossOverSubjects(final List<TestSubject> testSubjectsToCrossOver) {
        List<TestSubject> childrens = new ArrayList<>();

        for (int i = 0; i < testSubjectsToCrossOver.size(); i++) {
            var fatherSubject = testSubjectsToCrossOver.get(i);
            i++;
            var motherSubject = testSubjectsToCrossOver.get(i);

            var child1 = new TestSubject(
                    motherSubject.getWeight1() == 1 ? 0 : 1 ,
                    fatherSubject.getEntry1() == 1 ? 0 : 1 ,
                    fatherSubject.getWeigh2(),
                    fatherSubject.getEntry2());

            var child2 = new TestSubject(
                    fatherSubject.getWeight1() == 1 ? 0 : 1 ,
                    motherSubject.getEntry1() == 1 ? 0 : 1 ,
                    motherSubject.getWeigh2(),
                    motherSubject.getEntry2());

            childrens.addAll(List.of(child1, child2));
        }

        return childrens;
    }

    private static List<TestSubject> mutateSubjects(final List<TestSubject> testSubjectsToMutate) {
        testSubjectsToMutate.forEach(testSubject -> {

            switch (new Random().nextInt(4) + 1) {
                case 1:
                    testSubject.setWeight1(testSubject.getWeight1() == 1 ? 0 : 1);
                    break;
                case 2:
                    testSubject.setWeigh2(testSubject.getWeigh2() == 0 ? 1 : 0);
                    break;
                case 3:
                    testSubject.setEntry1(testSubject.getEntry1() == 1 ? 0 : 1);
                    break;
                case 4:
                    testSubject.setEntry2(testSubject.getEntry2() == 1 ? 0 : 1);
                    break;
                default:
                    break;
            }
        });

        return testSubjectsToMutate;
    }
}
