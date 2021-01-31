
package com.eomcs.pms;
import java.util.Scanner;

public class App3 {

    public static void main(String[] args) {
        Scanner keyboardScan = new Scanner(System.in);

        final int LENGTH = 100;
        int[] no = new int[LENGTH];
        String[] name = new String[LENGTH];
        String[] email = new String[LENGTH];
        String[] password = new String[LENGTH];
        String[] photo = new String[LENGTH];
        String[] tel = new String[LENGTH];
        Date[] registeredDate = new Date[LENGTH];

        int size = 0;


        while (true) {
        System.out.print("명령> ");
        String input = keyboardScan.nextLine();

        if(input.equalsIgnoreCase("quit")||
        input.equalsIgnoreCase("exit")) {
            break;
        } else if (input.equalsIgnoreCase("/member/add")) {
            System.out.print("번호> ");
            no[size] = keyboardScan.nextInt();

            System.out.print("이름> ");
            name[size] = keyboardScan.nextLine();

            System.out.print("이메일> ");
            email[size] = keyboardScan.nextLine();

            System.out.print("비밀번호> ");
            password[size] = keyboardScan.nextLine();

            System.out.print("사진> ");
            photo[size] = keyboardScan.nextLine();

            System.out.print("전화번호> ");
            tel[size] = keyboardScan.nextLine();
            
        } else if (input.equalsIgnoreCase("/member/list")) {

           



        

    }
}
