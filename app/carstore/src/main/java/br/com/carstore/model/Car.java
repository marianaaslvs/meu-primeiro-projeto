package br.com.carstore.model;
public class Car {
    private String id;
    private String name;
    private String color;
    private String image;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getColor() {
        return color;
    }

    public String getImage() {
        return image;
    }

    public Car(String id, String name, String color, String image) {
        this.id = id;
        this.color = color;
        this.name = name;
        this.image = image;
    }
}
