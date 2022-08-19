/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author buidu_8h8ybgq
 */
public class Table {

    private String catalog;
    private String schema;
    private String name;
    private String type;

    public Table() {
    }

    public Table(String catalog, String schema, String name, String type) {
        this.catalog = catalog;
        this.schema = schema;
        this.name = name;
        this.type = type;
    }

    public String getCatalog() {
        return catalog;
    }

    public void setCatalog(String catalog) {
        this.catalog = catalog;
    }

    public String getSchema() {
        return schema;
    }

    public void setSchema(String schema) {
        this.schema = schema;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Table{" + "catalog=" + catalog + ", schema=" + schema + ", name=" + name + ", type=" + type + '}';
    }

}
