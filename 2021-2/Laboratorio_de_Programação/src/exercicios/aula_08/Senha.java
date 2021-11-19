package exercicios.aula_08;

import java.util.Random;

public class Senha {
    public static String Senha(){
        String senha="";
        for(int i=0;i<8;i++){
            int gerador=((int)(Math.random()*10));
            senha+=gerador;
        }
        return senha;
    }
}
