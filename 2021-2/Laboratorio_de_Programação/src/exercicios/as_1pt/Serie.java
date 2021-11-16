package exercicios.aula_16;

import java.util.Objects;
import java.util.Scanner;


public class Serie {

    private String title;
    private int seasons;
    private int totalEpisodes;
    private String sinopse;
    private boolean watched;

    Scanner input= new Scanner(System.in);

    //construtores
    public Serie (String title, int seasons, int totalEpisodes, String summary, boolean watched){
        this.title = title;
        this.seasons=seasons;
        this.totalEpisodes = totalEpisodes;
        this.sinopse=summary;
        this.watched = watched;
        System.out.println("Series registered sucessfully.");
    }
    public Serie(){
      setSerie();
    }
    public Serie(String title){
        this.title = title;
    }

    //metodos
    public void showSerie(){
       System.out.println("Tittle: "+this.title +"\n"+"Seasons: "+this.seasons+"\n"+"Number of episodes: "+this.totalEpisodes +"\n"+
                "Summary:"+this.sinopse+"\n"+"Watched:"+this.watched +"\n");
    }

    public void setSerie(){
        System.out.println("Type the title:");
        this.title =input.nextLine();
        System.out.println("Write a little summary for the serie:");
        this.sinopse= input.nextLine();
        System.out.println("Type the number of seasons:");
        this.seasons=Integer.parseInt(input.nextLine());
        System.out.println("Type the total number of episodes:");
        this.totalEpisodes =Integer.parseInt(input.nextLine());
        setWatched();
    }
    public boolean setWatched() {
        String resposta;
        System.out.println("Did you alredy watched this serie? (yes or no) ");

        for(int i=3; i>0;i--){
           resposta=input.nextLine();

            if(resposta.equals("yes") || resposta.equals("Yes") || resposta.equals("YES")){
               return this.watched =true;
            }
            else if(resposta.equals("No") || resposta.equals("NO") || resposta.equals("no")){
               return this.watched =false;
            }else{
                System.out.println("Please write onlye 'yes' or 'no', you have "+i+
                        "chances left to input it properly.");
            }
        }
        return false;
    }

    public boolean getAssistido() {
        return this.watched;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Serie serie = (Serie) o;
        return title.equals(serie.title);
    }

    @Override
    public int hashCode() {
        return Objects.hash(title);
    }
}
