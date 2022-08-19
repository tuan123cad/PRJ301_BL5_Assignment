/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package check;

import dal.TableDBContext;
import java.util.ArrayList;
import model.Table;

/**
 *
 * @author buidu_8h8ybgq
 */
public class CheckMethod {

    public static void main(String[] args) {
        TableDBContext tbc = new TableDBContext();

        ArrayList<Table> table = tbc.getTable();
        table.forEach((n) -> System.out.println(n.getSchema()));
        System.out.println("x");

    }

}
