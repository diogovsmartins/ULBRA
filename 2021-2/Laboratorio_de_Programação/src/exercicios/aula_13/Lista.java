package exercicios.aula_13;

import java.util.ArrayList;

public class Lista {
    public Cao primeiro;
    public int tam;
    public Cao ultimo;

    public int size(){
        return tam;
    }

    @Override
    public String toString() {
        return "Lista{" +
                "primeiro=" + primeiro +
                ", tam=" + tam +
                '}';
    }

    public boolean isEmpty(){
        if(primeiro==null){
            return true;
        }else{
            return false;
        }
    }


    public boolean add(Cao caozinho){
        if(this.primeiro==null){
            this.primeiro=caozinho;
            this.ultimo=caozinho;
            this.tam++;
            return true;
        }else{
            caozinho.proximo=primeiro;
            primeiro=caozinho;
            this.tam++;
            return true;
        }

    }
    public boolean addFim(Cao caozinho){
        if(this.primeiro==null){
          add(caozinho);
          return true;
        }else{
            Cao aux=primeiro;
            while (aux.proximo!=null){
                aux=aux.proximo;
            }
            aux.proximo=caozinho;
            this.ultimo=caozinho;
            tam++;
            return true;
        }
    }

    public boolean addFim2(Cao caozinho){
        if(this.primeiro==null){
            add(caozinho);
            return true;
        }else{
            Cao aux=ultimo;
            aux.proximo=caozinho;
            tam++;
            return true;
        }
    }

    public void listar(){
        if(isEmpty()){
            System.out.println("Lista vazia");
        }else {
            System.out.println("Listando todos os itens:");
            Cao aux=primeiro;
            aux.exibir();
            while (aux.proximo != null) {
                aux = aux.proximo;
                aux.exibir();
            }
        }
    }

    public boolean remover(){
        if (!isEmpty()){
            Cao p = this.primeiro;
            this.primeiro=p.proximo;
            this.tam--;
            return true;
            //   this.primeiro=this.primeiro.proximo;
        }else{
            System.out.println("Lista vazia");
            return false;
        }
    }

    public boolean removerFim(){
        if(!isEmpty()){
            Cao aux=primeiro;
            while (aux.proximo!=ultimo){
                aux=aux.proximo;
            }
            this.ultimo=aux;
            aux.proximo=null;
            tam--;
            System.out.println("Ultimo item removido com sucesso.");
            return true;
        }else{
            System.out.println("A lista está vazia, não é possivel deletar nada.");
            return false;
        }
    }
}
