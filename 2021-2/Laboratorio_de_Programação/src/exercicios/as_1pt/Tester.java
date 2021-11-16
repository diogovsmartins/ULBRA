package exercicios.aula_16;

import java.util.ArrayList;
import java.util.Scanner;

public class Tester {

    public static void main(String[] args) {
        Scanner input= new Scanner(System.in);
        ArrayList<Serie> seriesList= new ArrayList<Serie>();

        int option;
        do{
            System.out.println("Type 1 to register a into your series list. ");
            System.out.println("Type 2 to show your series.");
            System.out.println("Type 3 update the 'watched' status of a serie.");
            System.out.println("Type 4 to update a serie.");
            System.out.println("Type 5 to delete a serie.");
            
           option=Integer.parseInt(input.nextLine());
            switch (option) {
                case 1: {
                    //cadastrar serie
                    //pode usar o construtor pra setar os dados direto ou o padrão para setar os dados na criação
                    Serie serie= new Serie();
                    seriesList.add(serie);
                    break;
                }

                case 2: {
                    //mostrar series
                    System.out.println("Type 1 to show all series."+"\n"+"Type 2 to search for a specific serie"+
                            "\n"+"Type 3 to show the series you've already finished."+
                            "\n"+"Type 4 to show all the series you haven't fineshed yet.");
                    int select= Integer.parseInt(input.nextLine());

                    switch (select){
                        case 1:{
                            //show all series
                            System.out.println("Showing all series: ");
                            for(int i=0; i<seriesList.size();i++){
                                seriesList.get(i).showSerie();
                            }
                            System.out.println("Total number of series registered until now: "+seriesList.size());
                            break;
                        }

                        case 2:{
                            //show just the serie you choose to see
                            System.out.println("Type the name of the series which you want to see: ");
                            Serie search= new Serie(input.nextLine());

                            if(seriesList.contains(search)){
                                seriesList.get(seriesList.indexOf(search)).showSerie();
                            }else{
                                System.out.println("Sorry, we couldn't find you series.");
                                break;
                            }
                            break;
                        }

                        case 3:{
                            //show all the series you alredy watched
                            for (int i=0;i<seriesList.size();i++){
                                if (seriesList.get(i).getAssistido()) {
                                    seriesList.get(i).showSerie();
                                }
                            }
                            break;
                        }
                        case 4:{
                            //show all the series you haven't watched yet
                            for (int i=0;i<seriesList.size();i++){
                               if(!seriesList.get(i).getAssistido()){
                                    seriesList.get(i).showSerie();
                               }
                            }
                            break;
                        }
                    }
                    break;
                }

                case 3: {
                    //change 'watched' status of a serie
                    System.out.println("Type the name of the serie wich you want to update the 'watched' status of:");
                    Serie search= new Serie(input.nextLine());

                    if(seriesList.contains(search)){
                       int index=seriesList.indexOf(search);
                       seriesList.get(index).setWatched();
                    }else{
                        System.out.println("Sorry but we couldn't find that serie.");
                    }
                    break;
                }

                case 4:{
                    //update serie
                    System.out.println("Type the name of the serie you want to update: ");
                    Serie search= new Serie(input.nextLine());

                    if(seriesList.contains(search)){
                        int index=seriesList.indexOf(search);
                        seriesList.get(index).setSerie();
                    }else{
                        System.out.println("Sorry but we couldn't find that series.");
                    }
                    break;
                }

                case 5:{
                    //update serie
                    System.out.println("Type the name of the series you want to delete: ");
                    Serie search= new Serie(input.nextLine());

                    if(seriesList.contains(search)){
                        seriesList.remove(search);
                        System.out.println("Series deleted successfully.");
                    }else{
                        System.out.println("Sorry but we couldn't find that series.");
                    }
                    break;
                }
            }

        }while(option!=0);

    }
}
