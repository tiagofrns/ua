package imobiliaria;

import java.util.Scanner;

public class MainImobiliaria {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Imobiliaria imobiliaria = new Imobiliaria(100); // Capacidade para 100 imóveis
        int opcao; 
        String morada;
        double precoBase;
        double areaTotal;
        int nQuartos;
        int nPisos;
        String tipoo;
        
        do {
            System.out.println("Menu:");
            System.out.println("1. Adicionar novo imóvel");
            System.out.println("2. Listar imóveis disponíveis");
            System.out.println("3. Vender imóvel");
            System.out.println("4. Imprimir lucro total");
            System.out.println("5. Sair");
            System.out.print("Escolha uma opção: ");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Limpar o buffer

            switch (opcao) {
                case 1:
                    System.out.println("Tipo de Imóvel (1 - Casa, 2 - Apartamento, 3 - Terreno): ");
                    int tipo = scanner.nextInt();
                    scanner.nextLine(); // Limpar o buffer

                    System.out.println("Dados do Imovel:");
                    System.out.println("morada:");
                    morada = scanner.next();
                    scanner.nextLine();
                    System.out.println("Preço base:");
                    precoBase = scanner.nextDouble();
                    scanner.nextLine();
                    System.out.println("Area Total:");
                    areaTotal = scanner.nextDouble();
                    scanner.nextLine();
                   
                    
                    
                    
                    switch (tipo) {
                        case 1:
                            System.out.println("---Casa---");
                            System.out.println("Numero de quartos:");
                            nQuartos = scanner.nextInt();
                            scanner.nextLine();
                            System.out.println("Numero de pisos:");
                            nPisos = scanner.nextInt();
                            scanner.nextLine();
                            imobiliaria.addCasa(morada, precoBase, areaTotal, nQuartos, nPisos);
                            
                            
                            break;
                        case 2:
                            System.out.println("---Apartamento---");
                            System.out.println("Numero de quartos:");
                            nQuartos = scanner.nextInt();
                            scanner.nextLine();
                            imobiliaria.addApartamento(morada, precoBase, areaTotal, nQuartos);
                            break;
                        case 3:
                            System.out.println("---Terreno---");
                            System.out.println("tipo de terreno (urbano/rústico):");
                            tipoo = scanner.next();
                            scanner.nextLine();
                            imobiliaria.addTerreno(morada, precoBase, areaTotal, tipoo);
                            break;
                        default:
                            System.out.println("Opção inválida.");
                    }
                case 2:
                    System.out.println(imobiliaria);
                    break;
                case 3:
                    //imobiliaria.vender();
                    break;

                case 4:
                    // Imprimir lucro total
                    break;
                case 5:
                    System.out.println("Obrigada por usar o sistema.");
                    scanner.close();
                    break;
                default:
                    System.out.println("Opção inválida.");

                }

}   while(opcao != 5); 
        }
    }


